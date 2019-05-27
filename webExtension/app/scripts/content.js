import { initTooltip, removeTooltip } from '../lib/tooltip';
import { initMenu, removeMenu } from "../lib/menu";
import { initMouseObserver } from "../lib/mouseObserver";

initTooltip();
initMenu();
initMouseObserver();

// if extension is uninstalled
browser.runtime.onSuspend.addEventListener(function () {
    removeMenu();
    removeTooltip();
});
