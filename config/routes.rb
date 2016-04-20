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

  post 'cohorts/join/:id' => 'cohort#join_cohort', as: :join_cohort
  delete 'cohorts/leave/:id' => 'cohort#leave_cohort', as: :leave_cohort


  get 'cohort/:id/entries' => 'cohort#entries', as: :entries
  get 'cohort/:id/entry/new' => 'entry#new', as: :new_entry
  post 'cohort/:id/entries' => 'entry#create'
  get 'cohort/:id/entry/:id' => 'entry#show', as: :entry


  get 'cohort/:id/cards' => 'cohort#cards', as: :cards
  get 'cohort/:id/card/new' => 'card#new', as: :new_card
  post 'cohort/:id/cards' => 'card#create'

  root 'users#home'
end
