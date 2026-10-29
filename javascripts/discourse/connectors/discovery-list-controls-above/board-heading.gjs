import Component from "@glimmer/component";
import { service } from "@ember/service";

const DEFAULT_TITLE = "전체 글";
const DEFAULT_SUBTITLE = "제품개발본부의 질문과 지식을 함께 나누는 공간이에요.";
const CATEGORIES_TITLE = "모든 카테고리";
const CATEGORIES_SUBTITLE = "카테고리별로 글을 둘러보세요.";

// Page title + category pill chips above the topic list, following Jump-Up's
// board page (page-shell.tsx title, board-client.tsx filter chips). Chips
// cover the top-level categories the current user can see; a subcategory
// highlights its parent.
export default class BoardHeading extends Component {
  @service router;
  @service site;

  get category() {
    return this.args.outletArgs.category;
  }

  get isCategoriesPage() {
    return this.router.currentRouteName === "discovery.categories";
  }

  get title() {
    if (this.isCategoriesPage) {
      return CATEGORIES_TITLE;
    }
    return this.category?.name ?? DEFAULT_TITLE;
  }

  get subtitle() {
    if (this.isCategoriesPage) {
      return CATEGORIES_SUBTITLE;
    }
    return this.category ? this.category.description_text : DEFAULT_SUBTITLE;
  }

  get allActive() {
    return !this.category && !this.isCategoriesPage;
  }

  get activeId() {
    return this.category?.parent_category_id ?? this.category?.id;
  }

  get chips() {
    return this.site.categories
      .filter(
        (c) =>
          !c.parent_category_id &&
          c.id !== this.site.uncategorized_category_id
      )
      .sort((a, b) => a.position - b.position)
      .map((c) => ({ name: c.name, url: c.url, active: c.id === this.activeId }));
  }

  <template>
    <div class="nexus-board-heading {{if this.category '--category'}}">
      <div class="nexus-board-heading__title">
        <h1>{{this.title}}</h1>
        {{#if this.subtitle}}
          <p>{{this.subtitle}}</p>
        {{/if}}
      </div>
      <nav class="nexus-board-chips" aria-label="카테고리">
        <a class="nexus-chip {{if this.allActive 'is-active'}}" href="/latest">전체</a>
        {{#each this.chips as |chip|}}
          <a class="nexus-chip {{if chip.active 'is-active'}}" href={{chip.url}}>{{chip.name}}</a>
        {{/each}}
      </nav>
    </div>
  </template>
}
