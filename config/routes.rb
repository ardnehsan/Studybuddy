Rails.application.routes.draw do

  get 'users/new' => 'users#new', as: :sign_up
  get '/users/:id/profile' => 'users#home', as: :home
  post '/users' => 'users#create', as: :users

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :sign_out

  get 'cohorts/new' => 'cohort#new', as: :new_cohort
  get 'cohort/:id' => 'cohort#show', as: :cohort
  get 'cohorts' => 'cohort#index', as: :cohorts
  post 'cohorts' => 'cohort#create'

  get 'encyclopedias' => 'encyclopedia#index', as: :encyclopedia

  root 'users#home'
end
