import { browser } from '#imports';
import { setSearchLanguage } from "./menu";

const LABEL_TO_LANGUAGE = {
    'rm-sursilv': 'sursilvan',
    'rm-sutsilv': 'sutsilvan',
    'rm-surmiran': 'surmiran',
    'rm-puter': 'puter',
    'rm-vallader': 'vallader',
    'rm-rumgr': 'grischun',
    'de': 'german',
    'fr': 'french',
    'it': 'italian',
    'en': 'english',
};

export async function detectLanguage() {
    //exclude footer content for language detection
    const footer = document.getElementById('pledarix_menu_footer');
    const footerContent = footer ? footer.textContent : '';
    const text = document.body.textContent.replace(footerContent, '');

    const { label } = await browser.runtime.sendMessage({ type: 'classify-language', text });
    const textLanguage = LABEL_TO_LANGUAGE[label] || 'grischun';
    console.log("detected language: " + textLanguage);

    setSearchLanguage(textLanguage);
}
