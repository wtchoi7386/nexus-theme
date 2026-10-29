import { apiInitializer } from "discourse/lib/api";
import DiscourseURL from "discourse/lib/url";

// When login_required is on, anonymous visitors normally land on the
// "discovery.login-required" welcome card and have to click a button to
// reach the actual login form. Skip straight to the full login page instead.
export default apiInitializer((api) => {
  api.modifyClass("route:discovery.login-required", {
    pluginId: "nexus-custom",
    beforeModel(transition) {
      DiscourseURL.routeTo("/login");
    },
  });
});
