$(document).on 'click', ".open_msg", (e) ->
  e.preventDefault()

  title = $(this).data('title')

  opt =
    autoOpen: false
    modal:  true
    width:  550
    title:  title
    open: (event, ui) ->
      $('.ui-widget-overlay').bind 'click', (e) ->
        $('.ui-dialog-content').dialog('close')

  $( "#dialog" ).dialog(opt).dialog( "open" )
