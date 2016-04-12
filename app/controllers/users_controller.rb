class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:home]

  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit(:username, :email, :password, :password_confirmation, :photo)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render :new
      end

  end

  def home
    @current_user = User.find_by id: session[:user_id]
  end

end
