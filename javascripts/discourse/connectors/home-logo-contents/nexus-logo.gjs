// Header logo: the Nexus crystal (no tile) plus a "Nexus" wordmark,
// following Jump-Up's header (app-shell.tsx). Replaces core's uploaded logo
// image; the wordmark hides when the header minimizes on scroll inside a
// topic. Facet colors live in CSS (.nexus-logo__f*) so the dark facets can
// lift in dark mode.
<template>
  <span class="nexus-logo">
    <svg class="nexus-logo__mark" viewBox="0 4 64 58" role="img" aria-label="Nexus 로고">
      <polygon class="nexus-logo__f1" points="32,58 4,46 32,38" />
      <polygon class="nexus-logo__f2" points="32,58 60,46 32,38" />
      <polygon class="nexus-logo__f3" points="32,8 24,24 40,24" />
      <polygon class="nexus-logo__f4" points="4,46 14,32 20,40" />
      <polygon class="nexus-logo__f4" points="60,46 50,32 44,40" />
      <polygon class="nexus-logo__f5" points="32,16 22,34 32,48 42,34" />
      <polygon class="nexus-logo__f6" points="32,16 32,48 42,34" />
    </svg>
    {{#unless @outletArgs.minimized}}
      <span class="nexus-logo__name">Nexus</span>
    {{/unless}}
  </span>
</template>
