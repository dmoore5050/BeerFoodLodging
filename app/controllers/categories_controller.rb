class CategoriesController < ApplicationController
  def new
  end

  def create
    names = category_params[:name].split(',')

    @categories = names.map do |n|
      Category.create(name: n.strip)
    end

    flash[:notice] = "Categories created!"

    respond_to do |format|
      format.js
    end
  end

  def show
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]

    @category.update_attributes category_params

    flash[:notice] = 'Category updated!'

    respond_to do |format|
      format.js
    end
  end

  def index
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy

    flash[:notice] = 'Category deleted!'

    respond_to do |format|
      format.js
    end
  end

  private

  def category_params
    params
      .require(:category)
      .permit(:name)
  end

  def category
    @category = Category.new
  end
  helper_method :category

  def categories
    @categories = Category.all
  end
  helper_method :categories
end
