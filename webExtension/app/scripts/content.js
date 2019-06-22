import { initTooltip, removeTooltip } from '../lib/tooltip';
import { initMenu, removeMenu } from "../lib/menu";
import { initMouseObserver } from "../lib/mouseObserver";
import { detectLanguage } from '../lib/languageDetection';
import $ from 'jquery';

initTooltip();
initMenu();
initMouseObserver();

// if extension is uninstalled
if (typeof browser.runtime.onSuspend !== 'undefined') {
    browser.runtime.onSuspend.addListener(function () {
        removeMenu();
        removeTooltip();
    });
}
document.body.addEventListener('DOMSubtreeModified', detectLanguage);
