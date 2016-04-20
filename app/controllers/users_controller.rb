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
    student = Student.find_by id: @current_user.id
  
  end

  def join_cohort
    @cohort = Cohort.find_by id: params[:id]
    student = Student.new
    @current_user = student.user
    @student.cohort = student.cohort
      if student.save
        redirect_to home_path
      else
        redirect_to entries_path
      end
    end

  def leave_cohort
    @cohort = Cohort.find_by id: params[:id]
    student = Student.find_by(user_id: @current_user.id)
    student.destroy
    redirect_to home_path
  end

end
