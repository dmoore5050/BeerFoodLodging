$(document).ready ->

  # show new post form on click

  $('body').on 'click', '#reveal_new_post_form.no_height', (e) ->
    e.preventDefault()

    $(this).addClass('expanded').removeClass 'no_height'
    $('.new_post_form').show().animate
      height: '285px', 200

  # hide visible form on click

  $('body').on 'click', '#reveal_new_post_form.expanded', (e) ->
    e.preventDefault()

    $(this).addClass('no_height').removeClass 'expanded'
    $('.new_post_form input').not('.sync_btn').val ''
    $('.new_post_form textarea,
       .new_post_form select,
       .new_post_form div.input').val ''

    $('.new_post_form').show().animate
      height: '0', 200

  # show edit category modal on click

  $('body').on 'click', '.edit_post', (e) ->
    e.preventDefault()
    id = $(this).attr('data-id')

    opt =
      autoOpen: false
      modal:  true
      width:  550
      title:  'Edit Post:'
      open: (event, ui) ->
        $('.ui-widget-overlay').bind 'click', (e) ->
          $('.ui-dialog-content').dialog('close')

    $( "#edit_post_" + id ).dialog(opt).dialog( "open" )

  # close dialog window

  $( '.cancel').on 'click', (e) ->
    e.preventDefault()
    $(this).closest('.edit_post_form').dialog( 'close' )
