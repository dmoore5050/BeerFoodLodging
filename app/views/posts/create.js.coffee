$('.new_post_form').hide().animate {'height': '0'}, 0

$('.new_post_form input').not('.sync_btn').val ''
$('.new_post_form textarea,
   .new_post_form select,
   .new_post_form div.input').val ''
$('#reveal_new_post_form').show().addClass('no_height').removeClass 'expanded'

$('ul.post_list').append "<%= escape_javascript(render @post) %>"

