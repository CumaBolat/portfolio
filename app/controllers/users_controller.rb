class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to login_url
    end
  end

  def show
    redirect_to login_url unless logged_in?

    if User.exists?(params[:id])
      @user = User.find(params[:id])
    else
      redirect_to login_url
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
