class GdprlawController < ApplicationController
  def index
  	@gdprarticles = Gdprarticle.all.order('article_id ASC')
  	@gdprrecitals = Gdprrecital.all.order('recital_id ASC')
  end

  def show
  	@gdprarticle = Gdprarticle.friendly.find(params[:id])
  	@gdprrecital = Gdprrecital.friendly.find(params[:id])
  end
end
