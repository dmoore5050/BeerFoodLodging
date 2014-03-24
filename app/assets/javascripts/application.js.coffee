#= require jquery
#= require jquery_ujs
#= require_tree .

$ ->
  flashCallback = ->
    $(".flash-message").fadeOut()
  $(".flash-message").bind 'click', (ev) =>
    $(".flash-message").fadeOut()
  setTimeout flashCallback, 3000
