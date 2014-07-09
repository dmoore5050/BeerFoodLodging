$("li[data-id='<%= @category.id %>']").replaceWith "<%= escape_javascript(render @category) %>"

$('.ui-dialog-content').dialog 'close'
