class Admin::GuidancenotesController < ApplicationController
  
  before_action :authenticate_user!
  def index
    @guidancenotes = Guidancenote.all.order('title ASC')
  end

  def show
    @guidancenote = Guidancenote.friendly.find(params[:id])
  end

 
  def create
    @guidancenote = Guidancenote.new(guidancenote_params)

    if @guidancenote.save
      flash[:notice] = 'New guidance note created'
      redirect_to admin_guidancenote_path
    else
      render 'new'
    end    
  end

  def new
    @guidancenote = Guidancenote.new
  end

  def update
    @guidancenote = Guidancenote.friendly.find(params[:id])

      if @guidancenote.update(guidancenote_params)
        flash[:notice] = 'Guidance note updated'
        redirect_to admin_guidancenotes_path
    else
      render 'new'
    end
  end

  def edit
      @guidancenote = Guidancenote.friendly.find(params[:id])
  end

  def destroy
    @guidancenote = Guidancenote.friendly.find(params[:id])
    @guidancenote.destroy

    flash[:notice] = "Guidance note removed"

    redirect_to admin_guidancenotes_path
  end

  # private

  #   def guidancenotes_params
  #     params.require(:model).permit(:[], :[])
  #   end


end
