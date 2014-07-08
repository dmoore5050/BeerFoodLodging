$(document).ready ->

  # show new category form on click

  $('body').on 'click', '#reveal_new_cat_form.no_height', (e) ->
    e.preventDefault()

    $(this).addClass('expanded').removeClass 'no_height'
    $('#new_category').show().animate
      height: '128px', 200

  # hide visible form on click

  $('body').on 'click', '#reveal_new_cat_form.expanded', (e) ->
    e.preventDefault()

    $(this).addClass('no_height').removeClass 'expanded'
    $('textarea#category_name').val ''
    $('#new_category').show().animate
      height: '0', 200

  # show edit category modal on click

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
