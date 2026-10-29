import { schedule } from "@ember/runloop";
import { apiInitializer } from "discourse/lib/api";

// Core's login inputs have no placeholder text; the confirmed design shows
// example values inside the empty fields.
export default apiInitializer((api) => {
  api.onPageChange((url) => {
    if (!url.startsWith("/login")) {
      return;
    }
    schedule("afterRender", () => {
      document
        .getElementById("login-account-name")
        ?.setAttribute("placeholder", "you@moasoftware.co.kr");
      document
        .getElementById("login-account-password")
        ?.setAttribute("placeholder", "••••••••");
    });
  });
});
