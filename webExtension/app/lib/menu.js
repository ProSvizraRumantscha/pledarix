import $ from 'jquery';
import { languages } from "./languages";

export function initMenu() {
    if($('#pledarix_menu_footer').length === 0) {
        $('body').append(_getMenuMarkup());
    }

    // set init value
    $("#pledarix_search_dropdown").val('grischun');
    $("#pledarix_display_dropdown").val('german');
}

export function removeMenu() {
    $('#pledarix_menu_footer').remove();
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
