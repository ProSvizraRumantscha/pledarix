import { initTooltip, removeTooltip } from '../lib/tooltip';
import { initMenu, removeMenu } from "../lib/menu";
import { generateCache } from "../lib/cache";

let cache;

initTooltip();
initMenu();
cache = generateCache();

// if extension is uninstalled
browser.runtime.onSuspend.addEventListener(function () {
    removeMenu();
    removeTooltip();
});