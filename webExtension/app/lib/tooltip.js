import $ from 'jquery';

export function initTooltip() {
    if($('#pledarix_tooltip').length === 0) {
        $('body').append(_getTooltipMarkup());
    }
}

function _getTooltipMarkup() {
    return "<div id='pledarix_tooltip'><p id='pledarix_tooltip_text'></p></div>";
}
