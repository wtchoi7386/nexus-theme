# nexus-theme

Discourse theme component for Nexus (제품개발본부 사내 게시판). Installed on top of the "Nexus" parent theme via Discourse's git-based remote theme feature.

## Structure

- `about.json` — theme component metadata
- `common/common.scss` — styles applied on all devices (fonts, radius, etc.)
- `javascripts/discourse/connectors/` — custom markup injected at Discourse plugin outlets (e.g. login page tweaks)
- `javascripts/discourse/api-initializers/` — custom behavior via Discourse's JS plugin API

## Workflow

1. Edit files here, test locally against the dev Discourse instance (`http://localhost:4200`), commit and push.
2. In Discourse admin → Customize → Themes → nexus-custom → "Check for updates" (or re-run the install step) to pull the latest commit.
3. Once verified locally, repeat the same update on the Mac mini (`studio-macmini`) instance.
