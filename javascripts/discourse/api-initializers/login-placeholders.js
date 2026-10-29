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

      if (!name) {
        return;
      }

      // The browser applies `autofocus` on its own schedule, possibly after
      // this runs. Blur any focus the field gets before the user has clicked
      // or typed anything; stop watching once they do.
      const stop = () => {
        name.removeEventListener("focus", undoAutofocus);
        document.removeEventListener("pointerdown", stop, true);
        document.removeEventListener("keydown", stop, true);
      };
      const undoAutofocus = () => name.blur();
      name.addEventListener("focus", undoAutofocus);
      document.addEventListener("pointerdown", stop, true);
      document.addEventListener("keydown", stop, true);
      if (document.activeElement === name) {
        name.blur();
      }
    });
  });
});
