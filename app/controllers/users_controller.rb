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
    @user = User.find(session[:user_id])
  end

  def create_auth
    @user = User.find(session[:user_id])
    auth_number = rand(100000...999999)
    @user.update(authentication_number: auth_number)
  end

  def auth_page
    if params[:authentication_number] == User.find(session[:user_id]).authentication_number
      redirect_to user_path(current_user)
    else
      flash[:success] = 'Invalid authentication number'
      redirect_to create_auth_path
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
