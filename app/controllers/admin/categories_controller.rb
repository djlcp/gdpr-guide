class Admin::CategoriesController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @categories = Category.all.order('title ASC')
  end

  def show
    @category = Category.friendly.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = 'New category created'
      redirect_to admin_category_path
    else
      render 'new'
    end    
  end

  def new
    @category = Category.new
  end

  def update
    @category = Category.friendly.find(params[:id])

      if @category.update(category_params)
        flash[:notice] = 'Post Updated'
        redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def edit
      @category = Category.friendly.find(params[:id])
  end

  def destroy
    @category = Category.friendly.find(params[:id])
    @category.destroy

    flash[:notice] = "Category Removed"

    redirect_to admin_categories_path
  end

  # private

  #   def category_params
  #     params.require(:model).permit(:[], :[])
  #   end


end
