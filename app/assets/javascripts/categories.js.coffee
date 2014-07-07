$(document).ready ->

  # show new category form on button click

  $('body').on 'click', '#reveal_new_cat_form', (e) ->
    e.preventDefault()

    $(this).hide()
    $('#new_category').show().animate
      height: '157px', 200

  # show edit category modal on button click

  $('body').on 'click', '.edit_category', (e) ->
    e.preventDefault()
    id = $(this).attr('data-id')

    opt =
      autoOpen: false
      modal:  true
      width:  550
      title:  'Edit Category Name:'
      open: (event, ui) ->
        $('.ui-widget-overlay').bind 'click', (e) ->
          $('.ui-dialog-content').dialog('close')

    $( "#edit_category_" + id ).dialog(opt).dialog( "open" )

  # close dialog window

  $( '.cancel').on 'click', (e) ->
    e.preventDefault()
    $(this).closest('.edit_category_form').dialog( 'close' )
