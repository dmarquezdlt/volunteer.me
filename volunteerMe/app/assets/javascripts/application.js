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
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require list
//= require_tree .


$(document).ready(function(){

  var PageNumberOptions = {
    innerWindow: 5,
    left: 3,
    right: 3
  };

  var options = {
  valueNames: ['name', 'description', 'time', 'date', 'state', 'commitment'],
  page:  5,
  plugins: [ ListPagination(PageNumberOptions) ]
  };

  var matchlist = new List('matches-list', options);

  $("#volunteer_modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });
  $("#organization_modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" })
  $("#volunteer_registration_modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });
  $("#organization_registration_modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });

});


