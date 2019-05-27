import $ from 'jquery';

export function initTooltip() {
    if($('#pledarix_tooltip').length === 0) {
        $('body').append(_getTooltipMarkup());
    }
}

export function removeTooltip() {
    $('#pledarix_tooltip').remove();
}

export function renderLookupResult(result) {
    if (result && result.translation) {
        $("#pledarix_tooltip").text(result.translation);
        $("#pledarix_tooltip").show();
    } else {
        $("#pledarix_tooltip").hide();
    }
}

function _getTooltipMarkup() {
    return "<div id='pledarix_tooltip'><p id='pledarix_tooltip_text'></p></div>";
}
