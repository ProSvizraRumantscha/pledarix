import $ from 'jquery';
import { languages } from "./languages";

export function initMenu() {
    if($('#pledarix_menu_footer').length === 0) {
        $('body').append(_getMenuMarkup());
    }
}

function _getMenuMarkup() {
    return ""+
    "<div id='pledarix_menu_footer'><form>"+
    "<label>Direcziun per la tschertga / Suchrichtung </label>"+
    "<select name='search' id='search_dropdown'>"+
    languages.map(lang => "<option value='"+lang[0]+"'>"+lang[1]+"</option>").join('\n') +
    "</select> &gt; "+
    "<select name='display' id='display_dropdown'>"+
    languages.map(lang => "<option value='"+lang[0]+"'>"+lang[1]+"</option>").join('\n') +
    "</select></form></div>";
}
