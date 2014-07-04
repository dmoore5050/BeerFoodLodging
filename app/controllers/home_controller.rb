class HomeController < ApplicationController
  def home
    @posts = Post.where("posts.published_on IS NOT NULL").reverse_order.page(params[:page]).per(1)
  end

  def index
    @posts = Post.where("posts.published_on IS NOT NULL").tagged_with(params[:tag]).reverse_order.page(params[:page]).per(1)
  end

  def about
  end

  def subscriptions
  end

  def admin
  end

  private

  def user(id)
    user = User.find id
    user.username
  end
  helper_method :user

  def format_time(t)
    "#{t.strftime("%A")}, #{t.strftime("%B")} #{t.strftime("%d")} @ #{t.strftime("%I").gsub(/^0/, '')}:#{t.strftime("%M")} #{t.strftime("%p")}"
  end
  helper_method :format_time
end
