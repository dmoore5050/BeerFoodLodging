$('#new_category').hide().animate {'height': '0'}, 0
$('textarea#category_name').val ''
$('#reveal_new_cat_form').show().addClass('no_height').removeClass 'expanded'

<% @categories.each do |cat| %>
$('ul.category_list').append "<%= escape_javascript(render cat) %>"
<% end %>
