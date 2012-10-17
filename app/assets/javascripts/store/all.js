// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

//= require store/spree_core
//= require store/spree_promo
//= require store/spree_cycle
//= require_tree .
//= require store/spree_workshop
//= require store/spree_addings_for_rodaben
//= require store/spree_news

$(function() {
  // when the #country field changes
  $("select#marcas").live("change", function() {
    // make a POST call and replace the content
    var marca = $('select#marcas :selected').text().toLowerCase();
    if(marca == "") marca="0";
    $.get('/t/marcas/' + marca, function(data){
      $("#default").html(data);
    });
    return false;
  });
});

$(function() {
  $('#news-container').vTicker({
    speed: 1000,
    pause: 4000,
    animation: 'fade',
    mousePause: true,
    showItems: 1
  });
});
