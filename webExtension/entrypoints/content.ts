import { browser, defineContentScript } from '#imports';
import { initTooltip, removeTooltip } from '../lib/tooltip';
import { initMenu, removeMenu } from '../lib/menu';
import { initMouseObserver } from '../lib/mouseObserver';
import { detectLanguage } from '../lib/languageDetection';
import '../assets/content.css';

export default defineContentScript({
  matches: ['<all_urls>'],
  main() {
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
    detectLanguage();

    let debounceTimer: ReturnType<typeof setTimeout>;
    const observer = new MutationObserver(() => {
      clearTimeout(debounceTimer);
      debounceTimer = setTimeout(detectLanguage, 500);
    });
    observer.observe(document.body, { childList: true, subtree: true, characterData: true });
  },
});
