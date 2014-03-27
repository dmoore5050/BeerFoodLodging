$(document).on 'click', ".open_msg", (e) ->
  title = $(this).data('title')
  opt =
    autoOpen: false
    modal:  true
    width:  550
    title:  title

  $( "#dialog" ).dialog(opt).dialog( "open" )
