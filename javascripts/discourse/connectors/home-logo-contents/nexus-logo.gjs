// Header logo: the same light Nexus tile used on the login page plus a
// "Nexus" wordmark, following Jump-Up's header (app-shell.tsx). Replaces
// core's uploaded logo image; the wordmark hides when the header minimizes
// on scroll inside a topic.
<template>
  <span class="nexus-logo">
    <span class="nexus-logo__tile">
      <svg viewBox="0 0 64 64" role="img" aria-label="Nexus 로고">
        <polygon points="32,58 4,46 32,38" fill="#38006b" />
        <polygon points="32,58 60,46 32,38" fill="#6a1b9a" />
        <polygon points="32,8 24,24 40,24" fill="#4a148c" />
        <polygon points="4,46 14,32 20,40" fill="#9c27b0" />
        <polygon points="60,46 50,32 44,40" fill="#9c27b0" />
        <polygon points="32,16 22,34 32,48 42,34" fill="#d500f9" />
        <polygon points="32,16 32,48 42,34" fill="#ea80fc" />
      </svg>
    </span>
    {{#unless @outletArgs.minimized}}
      <span class="nexus-logo__name">Nexus</span>
    {{/unless}}
  </span>
</template>
