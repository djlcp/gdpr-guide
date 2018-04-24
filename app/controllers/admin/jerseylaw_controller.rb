class Admin::JerseylawController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @jerseylaws = Jerseylaw.all.order('article_id ASC')
  end

  def show
    @jerseylaw = Jerseylaw.friendly.find(params[:id])
  end

   def create
    @jerseylaw = Jerseylaw.new(jerseylaw_params)

    if @jerseylaw.save
      flash[:notice] = 'New law created'
      redirect_to admin_jerseylaw_path
    else
      render 'new'
    end    
  end

  def new
    @jerseylaw = Jerseylaw.new
  end

  def update
    @jerseylaw = Jerseylaw.friendly.find(params[:id])

      if @post.update(jerseylaw_params)
        flash[:notice] = 'Post Updated'
        redirect_to admin_jerseylaw_path
    else
      render 'new'
    end
  end

  def edit
      @jerseylaw = Jerseylaw.friendly.find(params[:id])
  end

  def destroy
    @jerseylaw = Jerseylaw.friendly.find(params[:id])
    @jerseylaw.destroy

    flash[:notice] = "Law Removed"

    redirect_to admin_jerseylaw_index_path
  end

  # private

  #   def jerseylaw_params
  #     params.require(:model).permit(:[], :[])
  #   end

end
