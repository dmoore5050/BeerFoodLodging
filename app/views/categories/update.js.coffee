$editedCategory = $('.category_list').find "[data-id='<%= @category.id %>']"
textNode = $editedCategory.contents().filter( () -> this.nodeType == 3 ).first()

textNode.replaceWith '<%= @category.name %>'

$('.ui-dialog-content').dialog 'close'
