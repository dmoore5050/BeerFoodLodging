# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->

  $('body').on 'click', '#reveal_new_cat_form', (e) ->
    e.preventDefault()

    $(this).fadeOut( 0 )
    $('#new_category').animate
      height: '125px', 200
