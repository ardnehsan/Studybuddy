class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    username = params[:username]
    email = params[:email]
    password = params[:password]

    user = User.find_by username: username
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to root_path
    else
        render :new
    end
  end

  def delete
    session.delete :user_id
    redirect_to root_path, notice: "Come Back Soon!"
  end

end
