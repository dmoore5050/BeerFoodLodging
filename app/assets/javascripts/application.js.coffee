#= require jquery
#= require jquery_ujs
#= require jquery.ui.core
#= require jquery.ui.widget
#= require jquery.ui.accordion
#= require jquery.ui.dialog
#= require jquery.ui.all
#= require_tree .

$(document).ready ->

  # fade out flash notices after 3 seconds

  flashCallback = ->
    $(".flash-message").fadeOut()

  $(".flash-message").bind 'click', (ev) =>
    $(".flash-message").fadeOut()

  setTimeout flashCallback, 3000

  # pass flash messages through response headers if ajax

  $(document).ajaxComplete (event, request) ->
    type = request.getResponseHeader('flash-type') if request.getResponseHeader('flash-type')
    msg  = request.getResponseHeader('flash-msg')  if request.getResponseHeader('flash-msg')

    if ( typeof msg != 'undefined' && type != 'error')
      $('.alerts').html("<p class='flash-message #{type}'>#{msg}</p>")
      setTimeout flashCallback, 3000
