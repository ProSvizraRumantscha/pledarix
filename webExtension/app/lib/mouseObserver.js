import { mouseMoved } from "./tooltip";
import {queryTerm} from "./queryTerm";
import {detectLanguage} from "./languageDetection";
import $ from 'jquery';

var mouseX;
var mouseY;

export function initMouseObserver() {
    document.onmousemove = function(event) {
        mouseX = event.pageX;
        mouseY = event.pageY;
        
        console.log("mouseMoved");
        if (withinFreezeBorder(mouseX,mouseY)) {
            console.log("within freeze border");
            return;
        }
        mouseMoved(mouseX, mouseY);

        const word = _getWordUnderCursor(event);

        //Hand the word to the translation function
        if (word !== "") {
            console.log(word);
            queryTerm(word);
        }

        detectLanguage();
    };
}

function withinFreezeBorder(x,y) {
    var tooltipOffset = $("#pledarix_tooltip").offset();
    var minX = tooltipOffset.left - 5;
    var maxX = tooltipOffset.left + $("#pledarix_tooltip").width() + 5;
    var minY = tooltipOffset.top - 25
    var maxY = tooltipOffset.top + $("#pledarix_tooltip").height() + 5;
    console.log("minX " + minX + " maxX " + maxX + " minY " + minY + " maxY " + maxY);
    console.log("x " + x + " y " + y);
    return minX <= x && x <= maxX && minY <= y && y <= maxY;
}

// Function for detecting the word underneath the mouse pointer
// Source - https://stackoverflow.com/a/3710561
function _getWordUnderCursor(event) {
    var range, textNode, offset;

    if (document.body.createTextRange) {           // Internet Explorer
        try {
            range = document.body.createTextRange();
            range.moveToPoint(event.clientX, event.clientY);
            range.select();
            range = _getTextRangeBoundaryPosition(range, true);

            textNode = range.node;
            offset = range.offset;
        } catch(e) {
            return "";
        }
    }
    else if (document.caretPositionFromPoint) {    // Firefox
        range = document.caretPositionFromPoint(event.clientX, event.clientY);
        textNode = range.offsetNode;
        offset = range.offset;
    } else if (document.caretRangeFromPoint) {     // Chrome
        range = document.caretRangeFromPoint(event.clientX, event.clientY);
        textNode = range.startContainer;
        offset = range.startOffset;
    }

    //data contains a full sentence
    //offset represent the cursor position in this sentence
    var data = textNode.data,
        i = offset,
        begin,
        end;

    //Find the begin of the word (space)
    while (i > 0 && data.charAt(i).match(/[\w\u00C0-\u00ff]+/)) { --i; };
    begin = i + 1;

    //Find the end of the word
    i = offset;
    while (i < data.length && data.charAt(i).match(/[\w\u00C0-\u00ff]+/)) { ++i; };
    end = i;

    //Return the word under the mouse cursor
    return data.substring(begin, end);
}

// This code make it works with IE
// REF: https://stackoverflow.com/questions/3127369/how-to-get-selected-textnode-in-contenteditable-div-in-ie
function _getTextRangeBoundaryPosition(textRange, isStart) {
    var workingRange = textRange.duplicate();
    workingRange.collapse(isStart);
    var containerElement = workingRange.parentElement();
    var workingNode = document.createElement("span");
    var comparison, workingComparisonType = isStart ?
        "StartToStart" : "StartToEnd";

    var boundaryPosition, boundaryNode;

    // Move the working range through the container's children, starting at
    // the end and working backwards, until the working range reaches or goes
    // past the boundary we're interested in
    do {
        containerElement.insertBefore(workingNode, workingNode.previousSibling);
        workingRange.moveToElementText(workingNode);
    } while ( (comparison = workingRange.compareEndPoints(
        workingComparisonType, textRange)) > 0 && workingNode.previousSibling);

    // We've now reached or gone past the boundary of the text range we're
    // interested in so have identified the node we want
    boundaryNode = workingNode.nextSibling;
    if (comparison == -1 && boundaryNode) {
        // This must be a data node (text, comment, cdata) since we've overshot.
        // The working range is collapsed at the start of the node containing
        // the text range's boundary, so we move the end of the working range
        // to the boundary point and measure the length of its text to get
        // the boundary's offset within the node
        workingRange.setEndPoint(isStart ? "EndToStart" : "EndToEnd", textRange);

        boundaryPosition = {
            node: boundaryNode,
            offset: workingRange.text.length
        };
    } else {
        // We've hit the boundary exactly, so this must be an element
        boundaryPosition = {
            node: containerElement,
            offset: getChildIndex(workingNode)
        };
    }

    // Clean up
    workingNode.parentNode.removeChild(workingNode);

    return boundaryPosition;
}
