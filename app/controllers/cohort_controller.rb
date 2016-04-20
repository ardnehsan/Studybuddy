class CohortController < ApplicationController

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new params.require(:cohort).permit(:cohort_name, :teacher_name, :description)

      if @cohort.save
        redirect_to cohorts_path(id: @cohort.id)
      else
        render :new
      end
  end

  def index
    @cohorts = Cohort.all
    if params[:search]
    @cohorts = Cohort.search(params[:search]).order("created_at DESC")
  else
    @cohorts = Cohort.all.order('created_at DESC')
  end
  end

  def show
    @cohort = Cohort.find_by id: params[:id]
  end

  def join_cohort
    @cohort = Cohort.find_by id: params[:id]
    student = Student.new
    student.user = @current_user
    student.cohort = @cohort

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

  def entries
    @cohort = Cohort.find_by id: params[:id]
    @entries = Entry.order("word").page(params[:page]).per(5)
  end

  def cards
    @cohort = Cohort.find_by id: params[:id]
    @cards = Card.order("front").page(params[:page]).per(5)
  end

end
