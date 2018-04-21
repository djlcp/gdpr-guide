class GuidancenotesController < ApplicationController
  def index
  	@guidancenotes = Guidancenote.all.order('title ASC')
  end

  def show
  	@guidancenote = Guidancenote.friendly.find(params[:id])
  end
end
