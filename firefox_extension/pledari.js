const BACKEND_URL = "http://localhost:8084/tooltipQuery.php";
const LRU_CACHE_SIZE = 1024;
const DEBUG = true;

// create tooltip Box and append to body
var tooltipdiv = "<div class='tooltipdiv'><p class='tooltiptext'></p></div>";

var lruCache = new LRUMap(LRU_CACHE_SIZE);
var translating = false;
var mouseX;
var mouseY;
$(document).mousemove( function(e) {
   mouseX = e.pageX;
   mouseY = e.pageY;
   $(".tooltipdiv").css({'top':mouseY+20,'left':mouseX});
});

var languages = [
  ['grischun','Rumantsch (RG)'],
  ['sursilvan','Sursilvan'],
  ['sutsilvan','Sutsilvan'],
  ['surmiran','Surmiran'],
  ['vallader','Vallader'],
  ['puter','Puter'],
  ['german','Deutsch'],
  ['french','Français'],
  ['italian','Italian'],
  ['english','English']
];

$("body").append(tooltipdiv);
$("body").append(
  "<div class='footerPledariSelect'><form>"+
  "<label>Direcziun per la tschertga / Suchrichtung </label>"+
  "<select name='search' id='search_dropdown'>"+
  languages.map(lang => "<option value='"+lang[0]+"'>"+lang[1]+"</option>").join('\n') +
  "</select> &gt; "+
  "<select name='display' id='display_dropdown'>"+
  languages.map(lang => "<option value='"+lang[0]+"'>"+lang[1]+"</option>").join('\n') +
  "</select></form></div>");

  //initial values for selection
$("#search_dropdown").val('grischun');
$("#display_dropdown").val('german');

function getTranslate(lookupWord){
  var searchLang = $("#search_dropdown").val();
  var displayLang = $("#display_dropdown").val();
  if (searchLang === displayLang
      || !Boolean(lookupWord)) { //no lookupWord at all?
    renderLookupResult(null);
    return;
  }
  lookupWord = lookupWord.toLowerCase().trim();
  var cacheKey = searchLang + "." + displayLang + "." + lookupWord;
  var lookupResult = lruCache.get(cacheKey);
  if (lookupResult) {
    logDebug("cache hit for " + cacheKey);
    renderLookupResult(lookupResult);
  } else {
    logDebug("cache miss for " + cacheKey);
    if (translating) {
      logDebug("prevent translating " + cacheKey);
      return;
    }
    translating = true; //about to translate, prevent sending multiple parallel requests
    logDebug("translating " + cacheKey);
    $.ajax({
        url: BACKEND_URL,
        data: {search: searchLang, display: displayLang, pled: lookupWord},
        success: function(lookupResult){
          renderLookupResult(lookupResult);
          if (!lookupResult || !lookupResult.translation) {
            //nothing was found, prevent further lookups
            lookupResult = ".";
          }
          lruCache.set(cacheKey, lookupResult);
        },
        complete: function() {
          translating = false;
          logDebug("done translating");
        },
        error: function(xhr, status, thrown) {
          console.warn("failed contacting translation backend: " + status, thrown);
        }
      });
    }
}

function logDebug(text) {
  if (DEBUG) {
    console.log(text);
  }
}

function renderLookupResult(result) {
  if (result && result.translation) {
    $(".tooltiptext").text(result.translation);
    $(".tooltipdiv").show();
  } else {
    $(".tooltipdiv").hide();
  }
}


// Function for detecting the word underneath the mouse pointer
// Source - https://stackoverflow.com/a/3710561
$(function () {
    function getWordUnderCursor(event) {
        var range, textNode, offset;

        if (document.body.createTextRange) {           // Internet Explorer
            try {
                range = document.body.createTextRange();
                range.moveToPoint(event.clientX, event.clientY);
                range.select();
                range = getTextRangeBoundaryPosition(range, true);

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
        while (i > 0 && data[i].match(/[\w\u00C0-\u00ff]+/)) { --i; };
        begin = i;

        //Find the end of the word
        i = offset;
        while (i < data.length && data[i].match(/[\w\u00C0-\u00ff]+/)) { ++i; };
        end = i;

        //Return the word under the mouse cursor
        return data.substring(begin, end);
    }

    //Get the HTML in the body and detect mouse move on it
    var $hoverText = $("body");
    $hoverText.mousemove(function (e) {
        var word = getWordUnderCursor(e);

        //Hand the word to the translation function
        if (word !== "")
            getTranslate(word);
    });
});

// This code make it works with IE
// REF: https://stackoverflow.com/questions/3127369/how-to-get-selected-textnode-in-contenteditable-div-in-ie
function getTextRangeBoundaryPosition(textRange, isStart) {
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
