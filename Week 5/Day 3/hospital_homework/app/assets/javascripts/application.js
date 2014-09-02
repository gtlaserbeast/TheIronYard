// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap.min
//= require_tree .

$(function() {
  var flashCallback;
  flashCallback = function() {
    return $(".flash-message").fadeOut();
  };
  $(".flash-message").bind('click', (function(_this) {
    return function(ev) {
      return $(".flash-message").fadeOut();
    };
  })(this));
  return setTimeout(flashCallback, 3000);
});

// $(function() {
//   var empty;
//     $('form > input').keyup(function() {
//         var empty = false;
//         $('form > input').each(function() {
//             if ($(this).val() == '') {
//                 empty = true;
//             }
//         });

//         if (empty) {
//             $('.register').attr('disabled', 'disabled');
//         } else {
//             $('.register').removeAttr('disabled');
//         }
//     });
// })()