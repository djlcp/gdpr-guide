class CategoriesController < ApplicationController
	def index
  	@categories = Category.all.order('title ASC')
	end

  def show
  	@category = Category.friendly.find(params[:id])
  end
end
