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

var $textBox;

var ready = (function () {

  var theButtons = [
    { id: "#add_strong", before: "**", after: "**"},
    { id: "#add_em", before: "*", after: "*"},
    { id: "#add_h1", before: "\n# ", after: "\n"},
    { id: "#add_h2", before: "\n## ", after: "\n"},
    { id: "#add_h3", before: "\n### ", after: "\n"},
    { id: "#add_h4", before: "\n#### ", after: "\n"},
    { id: "#add_h5", before: "\n##### ", after: "\n"},
    { id: "#add_h6", before: "\n###### ", after: "\n"},
    { id: "#add_paragraph", before: "\n", after: "\n\n"},
    { id: "#add_blockquote", before: "\n> ", after: "\n"},
    { id: "#add_unord_list", before: "\n+ ", after: "\n"},
    { id: "#add_ord_list", before: "\n1. ", after: "\n"},
    { id: "#add_link", before: "[", after: "](link_url)"},
    { id: "#add_url_link", before: "<", after: ">"},
    { id: "#add_img", before: "![", after: "](image_url)"},
    { id: "#add_inline_code", before: "```", after: "```"},
    { id: "#add_fenced_code", before: "\n~~~ ruby\n", after: "\n~~~\n"}
  ];

  theButtons.forEach( function (button) {
    $(button.id).on('click', function (e) {
      e.preventDefault();
      insertText(button.before, button.after);
    });
  });

  $textBox = $("#article_body");

  function saveSelection() {
      $textBox.data("lastSelection", $textBox.getSelection());
  }

  $textBox.focusout(saveSelection);

  $textBox.bind("beforedeactivate", function () {
      saveSelection();
      $textBox.unbind("focusout");
  });
});

function insertText(before_text, after_text) {
    $textBox.focus();
    if(typeof $textBox.data('lastSelection') == "undefined") {
      $textBox.data("lastSelection", $textBox.getSelection());
    }
    var selection = $textBox.data("lastSelection");
    console.log(selection);
    $textBox.setSelection(selection.start, selection.end);
    $textBox.surroundSelectedText(before_text, after_text);
}

$(document).on('ready page:load', ready);
