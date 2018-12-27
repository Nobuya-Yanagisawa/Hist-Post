// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
	//= require activestorage
  //= require jquery
	//= require bootstrap-sprockets
	//= require turbolinks
  //= require cocoon
	//= require_tree .

$(function() {
    $(document).on("ajax:success", ".like", function(e) {
      if ($('#like_' + e.detail[0]).hasClass('fas')) {
        $('#like_' + e.detail[0]).removeClass('fas').addClass('far');
      } else {
    		$('#like_' + e.detail[0]).removeClass('far').addClass('fas');
      }
      // $('#likes_count').html('<%= @post_likes_count %>');
    });
});