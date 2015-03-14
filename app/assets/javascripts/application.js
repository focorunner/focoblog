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

var $textBox;

var ready = (function () {
    $('#add_strong').on("click", function(e) {
      e.preventDefault();
      insertText("**", "**", "bold");
    });

    $('#add_em').on("click", function(e) {
      e.preventDefault();
      insertText("*", "*", "italic");
    });

    $('#add_h1').on('click', function (e) {
      e.preventDefault();
      insertText("\n# ", "\n", "H1");
    });

    $('#add_h2').on("click", function (e) {
      e.preventDefault();
      insertText("\n## ", "\n", "H2");
    });

    $('#add_h3').on("click", function(e) {
      e.preventDefault();
      insertText("\n### ", "\n", "H3");
    });

    $('#add_h4').on("click", function(e) {
      e.preventDefault();
      insertText("\n#### ", "\n", "H4");
    });

    $('#add_h5').on("click", function(e) {
      e.preventDefault();
      insertText("\n##### ", "\n", "H5");
    });

    $('#add_h6').on("click", function(e) {
      e.preventDefault();
      insertText("\n###### ", "\n", "H6");
    });

    $('#add_paragraph').on("click", function(e) {
      e.preventDefault();
      insertText("\n", "\n\n", "paragraph");
    });

    $('#add_blockquote').on("click", function(e) {
      e.preventDefault();
      insertText("\n> ", "\n", "blockquote");
    });

    $('#add_unord_list').on("click", function(e) {
      e.preventDefault();
      insertText("\n* ", "\n", "element");
    });

    $('#add_ord_list').on("click", function(e) {
      e.preventDefault();
      insertText("\n1 ", "\n", "element");
    });

    $('#add_link').on("click", function(e) {
      e.preventDefault();
      insertText("[", "](link_url)", "link_name");
    });

    $('#add_url_link').on("click", function(e) {
      e.preventDefault();
      insertText("<", ">", "link_name");
    });

    $('#add_img').on("click", function(e) {
      e.preventDefault();
      insertText("![", "](image_url)");
    });

    $('#add_inline_code').on("click", function(e) {
      e.preventDefault();
      insertText("```", "```");
    });

    $('#add_fenced_code').on("click", function(e) {
      e.preventDefault();
      insertText("\n~~~ ruby\n", "\n~~~\n");
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

function insertText(before_text, after_text, default_text) {
    $textBox.focus();
    if(typeof $textBox.data('lastSelection') == "undefined") {
      $textBox.data("lastSelection", $textBox.getSelection());
    }
    var selection = $textBox.data("lastSelection");
    console.log(selection);
    $textBox.setSelection(selection.start, selection.end);
    $textBox.surroundSelectedText(before_text, after_text);
}

$(document).ready(ready);
$(document).on('page:load', ready);
