// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

$(document).on('focus keypress', '.countdown', function (e) {
    
    var $this = $(this);
    var msgSpan = $this.parents('div').find('.counter_msg');
    var ml = parseInt($this.attr('maxlength'));
    var length = this.value.length;
    var msg = ml - length + ' remaining';

    msgSpan.html(msg);
});

var ready = function() {
  $('#add_h1').on("click", function(e) {
    e.preventDefault();
    md_insert_h1_to('article[body]');
  });

  $('#add_h2').on("click", function(e) {
    e.preventDefault();
    md_insert_h2_to('article[body]');
  });

  $('#add_h3').on("click", function(e) {
    e.preventDefault();
    md_insert_h3_to('article[body]');
  });

  $('#add_h4').on("click", function(e) {
    e.preventDefault();
    md_insert_h4_to('article[body]');
  });

  $('#add_h5').on("click", function(e) {
    e.preventDefault();
    md_insert_h5_to('article[body]');
  });

  $('#add_h6').on("click", function(e) {
    e.preventDefault();
    md_insert_h6_to('article[body]');
  });

  $('#add_em').on("click", function(e) {
    e.preventDefault();
    md_insert_em_to('article[body]');
  });

  $('#add_strong').on("click", function(e) {
    e.preventDefault();
    md_insert_strong_to('article[body]');
  });

  $('#add_paragraph').on("click", function(e) {
    e.preventDefault();
    md_insert_paragraph_to('article[body]');
  });

  $('#add_blockquote').on("click", function(e) {
    e.preventDefault();
    md_insert_blockquote_to('article[body]');
  });

  $('#add_unord_list').on("click", function(e) {
    e.preventDefault();
    md_insert_unord_list_to('article[body]');
  });

  $('#add_ord_list').on("click", function(e) {
    e.preventDefault();
    md_insert_ord_list_to('article[body]');
  });

  $('#add_link').on("click", function(e) {
    e.preventDefault();
    md_insert_link_to('article[body]');
  });

  $('#add_img').on("click", function(e) {
    e.preventDefault();
    md_insert_img_to('article[body]');
  });
};

function md_insert_h1_to(element) {
  insertText(element, "\n# ", "\n", "H1")
}

function md_insert_h2_to(element) {
  insertText(element, "\n## ", "\n", "H2")
}

function md_insert_h3_to(element) {
  insertText(element, "\n### ", "\n", "H3")
}

function md_insert_h4_to(element) {
  insertText(element, "\n#### ", "\n", "H4")
}

function md_insert_h5_to(element) {
  insertText(element, "\n##### ", "\n", "H5")
}

function md_insert_h6_to(element) {
  insertText(element, "\n###### ", "\n", "H6")
}

function md_insert_em_to(element) {
  insertText(element, "*", "*", "italic")
}

function md_insert_strong_to(element) {
  insertText(element, "**", "**", "bold")
}

function md_insert_paragraph_to(element) {
  insertText(element, "\n", "\n\n", "paragraph")
}

function md_insert_blockquote_to(element) {
  insertText(element, "\n> ", "\n", "blockquote")
}

function md_insert_unord_list_to(element) {
  insertText(element, "\n* ", "\n", "element")
}

function md_insert_ord_list_to(element) {
  insertText(element, "\n1 ", "\n", "element")
}

function md_insert_link_to(element) {
  insertText(element, "[", "](link_url)", "link_name")
}

function md_insert_img_to(element) {
  insertText(element, "[", "](image_url)", "image_name")
}

function insertText(element_name, before_text, after_text, default_text) {
  // get element by name
  var element = document.getElementsByName(element_name)[0];

  //IE specific patch: IE 9 etc.
  //if if (/MSIE[\/\s](\d+\.\d+)/.test(navigator.userAgent)) {
  if (selection = document.selection) {
    IE_insertText(element, selection, before_text, after_text, default_text);
  //modern browsers
  } else if (element.selectionStart || element.selectionStart == '0') {
    var selection_from       = element.selectionStart;
    var selection_to         = element.selectionEnd;
    var val                  = element.value;
    var text_before_selected = val.substring(0, selection_from);
    var text_after_selected  = val.substring(selection_to, val.length);
    var selected_text        = val.substring(selection_from, selection_to);
    var content;

    // if we didn't select anything we add default text
    if (selection_from == selection_to) {
      content = default_text;
     // otherwise we use selected text  
    } else {
      content = selected_text;
    }

   // updating element value
    if (/Firefox[\/\s](\d+\.\d+)/.test(navigator.userAgent)){ 
      element.value = text_before_selected + before_text + content + after_text + text_after_selected;
    }
    else {
      var text = before_text + content + after_text;
      var event = document.createEvent('TextEvent');
      event.initTextEvent('textInput', true, true, null, text);
      element.dispatchEvent(event);
      text = "";
    }
    element.focus();

   // do highlight text
    element.selectionStart = selection_from + before_text.length;
    element.selectionEnd   = element.selectionStart + content.length;

    if (selection_from != selection_to) {
      window.getSelection().collapseToEnd();
    }
  //other ones?
  } else {
    alert("still not fully implemented"); 
  }
}

// special function for inserting text in Internet Explorer
function IE_insertText(element, selection, before_text, after_text, 
                       default_text) {
  // firstly have to focus on element to manipulate with range on it
  // otherwise it will break 
  element.focus();

  // grab current selection
  var range = selection.createRange();

  var content;
  // if we didn't select anything we add default text
  if (selection.type == 'None') {
    content = default_text;
  // otherwise we use selected text  
  } else {
    content = range.text;
  }

  // will highlight from that starting point
  var start = IE_currentCursorPosition(element, range.getBookmark());

  // we will highlight text after added before text markdown
  start += before_text.length;

  // highlight till content lenght
  var end = start + content.length;

  // if we selected some text do not highlight it after adding markdown to it
  // reposition cursor after added content
  if (selection.type != 'None') {
    start = end;
  }

  // update content of field
  range.text = before_text + content + after_text;

  // reintroduce in element proper selection of updated content
  // we need new text range
  var text_range = element.createTextRange();
  // do highlight text
  text_range.collapse(true);
  // set proper start and end points 
  text_range.moveEnd("character", end);
  text_range.moveStart("character", start);
  text_range.select();
}

// to calculate Internet Explorer cursor position,
// at the beginning of currently selected text
function IE_currentCursorPosition(element, range_bookmark) {
  var position  = 0;
  var range_dup = element.createTextRange();

  range_dup.moveToBookmark(range_bookmark);

  while (range_dup.moveStart('character' , -1) !== 0) {
    position++;
  }
  return position;
}

$(document).ready(ready);
$(document).on('page:load', ready);