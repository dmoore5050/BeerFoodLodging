$("li[data-id='<%= @post.id %>']").replaceWith "<%= escape_javascript(render @post) %>"

$('.ui-dialog-content').dialog 'close'
