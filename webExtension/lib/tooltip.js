export function initTooltip() {
    if (document.getElementById('pledarix_tooltip') === null) {
        document.body.insertAdjacentHTML('beforeend', _getTooltipMarkup());
    }
}

export function removeTooltip() {
    document.getElementById('pledarix_tooltip')?.remove();
}

export function renderLookupResult(result) {
    const tooltip = document.getElementById('pledarix_tooltip');
    if (!tooltip) return;
    if (result && result.translation) {
        tooltip.textContent = result.translation;
        tooltip.style.display = 'block';
    } else {
        tooltip.style.display = 'none';
    }
}

export function mouseMoved(x, y) {
    const tooltip = document.getElementById('pledarix_tooltip');
    if (!tooltip) return;
    tooltip.style.top = (y + 20) + 'px';
    tooltip.style.left = x + 'px';
}

function _getTooltipMarkup() {
    return "<div id='pledarix_tooltip'><p id='pledarix_tooltip_text'></p></div>";
}
