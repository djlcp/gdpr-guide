class JerseylawController < ApplicationController
  def index
    @jerseylaws = Jerseylaw.all.order('article_id ASC')
  end

  def show
    @jerseylaw = Jerseylaw.friendly.find(params[:id])
  end
end
