class CohortController < ApplicationController

def new
  @cohort = Cohort.new
end

def index
  @cohorts = Cohort.all
end

def show
  @cohort = Cohort.find_by id: params[:id]
end


end
