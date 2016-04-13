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

  def entries
    @cohort = Cohort.find_by id: params[:id]
  end


end
