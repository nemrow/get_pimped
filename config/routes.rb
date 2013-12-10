Pimped::Application.routes.draw do
  get "qestions/index"

  get "qestions/new"

  get "doctors/index"

  get "doctors/new"

  get "teams/index"

  get "teams/new"

  root :to => 'schools#index'

  resources :schools, :only => :none do
    resources :rotations
  end 

  resources :rotations do
    resources :teams
  end

  resources :teams, :only => :none do
    resources :doctors
  end

  resources :teams, :only => :none do
    resources :doctors
  end

  resources :doctors, :only => :none do
    resources :questions
  end

  resources :questions, :only => :none do
    resources :answers
  end
end
