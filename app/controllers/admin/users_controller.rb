class Admin::UsersController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @users = User.all.order('last_sign_in_at DESC')
  end

  def show
    @user = User.find(params[:id])
  end
 
  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = 'New user created'
      redirect_to admin_user_path
    else
      render 'new'
    end    
  end

  def new
    @cuser = User.new
  end

  def update
    @user = User.find(params[:id])

      if @user.update(user_params)
        flash[:notice] = 'User Updated'
        redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def edit
      @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    flash[:notice] = "User Removed"

    redirect_to admin_users_path
  end

  private

    def user_params
      params.require(:user).permit(:email)
    end


 end
