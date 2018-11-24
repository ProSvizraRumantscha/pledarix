//document.body.style.border = "5px solid red";

console.log("hello world");

// create tooltip Box and append to body
var tooltipdiv = "<div class='tooltipdiv'><p class='tooltiptext'>Tooltip Placeholder Text</p></div>";

var mouseX;
var mouseY;
$(document).mousemove( function(e) {
   mouseX = e.pageX;
   mouseY = e.pageY;
   $(".tooltipdiv").css({'top':mouseY+20,'left':mouseX});
});

//word to be looked up in dictionary
var lookupWord;
// value for direction of translation
var lookupDirecziun = 7; // initialize to option 7, rumantsch to german

$("body").append(tooltipdiv);
$("body").append("<div class='footerPledariSelect'><form><label>Direcziun per la tschertga / Suchrichtung </label><select name='direcziun' id='direcziun_dropdown'><option value='0'>Deutsch -&gt; Romansh (RG)</option><option value='1'>Rumantsch (RG) -&gt; Deutsch</option><option value='2'>Sursilvan -&gt; Deutsch</option><option value='3'>Sutsilvan -&gt; Deutsch</option><option value='4'>Surmiran -&gt; Deutsch</option><option value='5'>Puter -&gt; Deutsch</option><option value='6'>Vallader -&gt; Deutsch</option><option value='7' selected=''>Rumantsch (total) -&gt; Deutsch</option></select></form></div>");

$(document).on("change","select",function(){
  $("option[value=" + this.value + "]", this)
  .attr("selected", true).siblings()
  .removeAttr("selected")
  console.log(document.getElementById('direcziun_dropdown').value);
});

function getTranslate(str){
  lookupDirecziun = document.getElementById('direcziun_dropdown').value;
  console.log(str.trim());
  if (str != lookupWord) {
    $(".tooltipdiv").hide();
  }
  var query = "http://pledari.ch/tooltipQuery.php?direcziun="+lookupDirecziun+"&modus=exact&pled=" + str.trim();
  console.log(query);
  $.get(query).done(function(data){
    console.log(data);
      if (lookupDirecziun == 0) {
        result = JSON.parse(data)["A1"];
      } else {
        result = JSON.parse(data)["B1"];
      }

      $(".tooltiptext").html(result);
      $(".tooltipdiv").show();
      lookupWord = str;
  })
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
        while (i > 0 && data[i] !== " ") { --i; };
        begin = i;

        //Find the end of the word
        i = offset;
        while (i < data.length && data[i] !== " ") { ++i; };
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
