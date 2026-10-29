import Component from "@glimmer/component";
import { getOwner } from "@ember/owner";
import DButton from "discourse/ui-kit/d-button";

// Core shows the passkey button in the login page's right column; the
// confirmed design puts it under the login button instead, behind an
// "또는" divider. Reuses the login controller's own passkey flow, and the
// right-column copy is hidden in CSS.
export default class Passkey extends Component {
  get login() {
    return getOwner(this).lookup("controller:login");
  }

  <template>
    {{#if this.login.canUsePasskeys}}
      <div class="nexus-alt-login">
        <div class="nexus-or-divider">또는</div>
        <DButton
          class="btn-social nexus-passkey-button"
          @action={{this.login.passkeyLogin}}
          @label="login.passkey.name"
        />
      </div>
    {{/if}}
  </template>
}
