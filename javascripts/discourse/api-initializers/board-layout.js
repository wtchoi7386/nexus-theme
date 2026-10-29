import { apiInitializer } from "discourse/lib/api";

// The welcome banner ("어서오세요" + search) is replaced by the board heading
// (discovery-list-controls-above connector); search stays reachable from the
// header icon, which core shows whenever the banner isn't displayed.
export default apiInitializer((api) => {
  api.registerValueTransformer("welcome-banner-display-for-route", () => false);
});
