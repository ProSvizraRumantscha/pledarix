import { browser } from '#imports';
import { languages } from "./languages";

export function initMenu() {
    if (document.getElementById('pledarix_menu_footer') === null) {
        document.body.insertAdjacentHTML('beforeend', _getMenuMarkup());
    }

    // set init value
    document.getElementById('pledarix_search_dropdown').value = 'grischun';
    document.getElementById('pledarix_display_dropdown').value = 'german';
}

export function removeMenu() {
    document.getElementById('pledarix_menu_footer')?.remove();
}

export function getSelectedLanguages() {
    return {
        searchLang: document.getElementById('pledarix_search_dropdown').value,
        displayLang: document.getElementById('pledarix_display_dropdown').value,
    }
}

export function setSearchLanguage(language) {
    document.getElementById('pledarix_search_dropdown').value = language;
}

function _getMenuMarkup() {
    const label = browser.i18n.getMessage("selectSearchDirection");
    return ""+
    "<div id='pledarix_menu_footer'><form>"+
    "<label>" + label + " </label>"+
    "<select name='search' id='pledarix_search_dropdown'>"+
    languages.map(lang => "<option value='"+lang[0]+"'>"+lang[1]+"</option>").join('\n') +
    "</select> &gt; "+
    "<select name='display' id='pledarix_display_dropdown'>"+
    languages.map(lang => "<option value='"+lang[0]+"'>"+lang[1]+"</option>").join('\n') +
    "</select></form></div>";
}
