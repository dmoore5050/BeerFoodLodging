class PostsController < ApplicationController
  def create
    @post = Post.create post_params

    flash[:notice] = 'Post created!'

    respond_to do |format|
      format.js
    end
  end

  def show
  end

  def update
    @post = Post.find params[:id]

    @post.update_attributes post_params

    flash[:notice] = 'Post updated!'

    respond_to do |format|
      format.js
    end
  end

  def index
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy

    flash[:notice] = 'Post deleted!'

    respond_to do |format|
      format.js
    end
  end

  private

  def post_params
    params
      .require(:post)
      .permit(:title, :body, :category_id, :tag_list, :published_on)
      .merge(user: current_user)
  end

  def post
    @post = Post.new
  end
  helper_method :post

  def posts
    @posts = Post.all
  end
  helper_method :posts

  def category_list
    @category_list = Category.all
  end
  helper_method :category_list

end
