import { schedule } from "@ember/runloop";
import { apiInitializer } from "discourse/lib/api";

// Core's login inputs have no placeholder text; the confirmed design shows
// example values inside the empty fields. Core also autofocuses the email
// field; the login page should open with nothing focused.
export default apiInitializer((api) => {
  api.onPageChange((url) => {
    if (!url.startsWith("/login")) {
      return;
    }
    schedule("afterRender", () => {
      const name = document.getElementById("login-account-name");
      name?.setAttribute("placeholder", "you@moasoftware.co.kr");
      name?.removeAttribute("autofocus");
      document
        .getElementById("login-account-password")
        ?.setAttribute("placeholder", "••••••••");

      // The browser may already have queued the autofocus; undo it once it
      // has run, unless the user has started typing.
      requestAnimationFrame(() =>
        requestAnimationFrame(() => {
          if (name && document.activeElement === name && !name.value) {
            name.blur();
          }
        })
      );
    });
  });
});
