$('.cover_blog').html("<%= escape_javascript render 'blog_contents' %>");

$('.paginator').html('<%= escape_javascript(paginate(@posts, remote: true).to_s) %>');
