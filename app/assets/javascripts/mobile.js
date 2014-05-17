$(function(){
  $(document).ready(function() {
    $("#lista-clientes").
      attr('data-filter', 'true').
      attr('data-inset', 'true').
      attr('data-filter-placeholder', 'Digite seu nome...');
    var mq = window.matchMedia( "(min-width: 950px)" );

    if (!mq.matches) {
      $("#lista-clientes").attr('data-filter-reveal', 'true');
    }
    $("#lista-clientes").listview();
    var search_input = $("ul.lista-clientes").prev().find('input.ui-input-text');
    search_input.focus();
    search_input.keydown(function(e) {
      if (e.which == 13) {
        window.location = $("li.item-cliente").filter(":visible:first").find('a:first').attr('href');
      }
    });
  });  
});
