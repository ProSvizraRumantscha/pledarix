import { initTooltip, removeTooltip } from '../lib/tooltip';
import { initMenu, removeMenu } from "../lib/menu";

initTooltip();
initMenu();

// if extension is uninstalled
browser.runtime.onSuspend.addEventListener(function () {
    removeMenu();
    removeTooltip();
});