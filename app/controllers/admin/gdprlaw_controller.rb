class Admin::GdprlawController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @gdprarticles = Gdprarticle.all.order('article_id ASC')
    @gdprrecitals = Gdprrecital.all.order('recital_id ASC')
    @gdprarticle = Gdprarticle.
    @gdprrecital = Gdprrecital.
  end

  def show
    @gdprarticle = Gdprarticle.friendly.find(params[:id])
    @gdprrecital = Gdprrecital.friendly.find(params[:id])
  end

  
  def create
    @gdprarticle = Gdprarticle.new(gdprarticles_params)
    @gdprrecital = Gdprrecital.new(gdprrecitals_params)

    if @gdprrecitals.save
      flash[:notice] = 'New GDPR recital created'
      redirect_to admin_gdprlaw_index_path
    elsif @gdprarticle.save
      flash[:notice] = 'New GDPR article created'
      redirect_to admin_gdprlaw_index_path
    else
      render 'new'
    end    
  end

  def new
    @gdprarticle = Gdprarticle.new
    @gdprrecital = Gdprrecital.new
  end

  def update
    @gdprarticle = Gdprarticle.friendly.find(params[:id])
    @gdprrecital = Gdprrecital.friendly.find(params[:id])

    if @gdprrecital.update(gdprrecital_params)
      flash[:notice] = 'Recital Updated'
      redirect_to admin_gdprlaw_index_path
    elsif @gdprarticle.update(gdprarticle_params)
      flash[:notice] = 'Article Updated'
      redirect_to admin_gdprlaw_index_path    
    else
      render 'new'
    end
  end

  def edit
    @gdprarticle = Gdprarticle.friendly.find(params[:id])
    @gdprrecital = Gdprrecital.friendly.find(params[:id])
  end

  def destroy
    @gdprarticle = Gdprarticle.friendly.find(params[:id])
    @gdprrecital = Gdprrecital.friendly.find(params[:id])


    if @gdprrecital.destroy
      flash[:notice] = 'Recital Detroyed'
      redirect_to admin_gdprlaw_index_path
    elsif @gdprarticle.destroy
      flash[:notice] = 'Article Updated'
      redirect_to admin_gdprlaw_index_path   
    end 

  end

  # private

  #   def gdprrecital_params
  #     params.require(:model).permit(:[], :[])
  #   end

  # private

  #   def gdprarticle_params
  #     params.require(:model).permit(:[], :[])
  #   end


end
