Rails.application.routes.draw do

  # get 'skills/index'
  # get 'skills/show'
  # get 'skills/create'
  # get 'skills/update'
  # get 'skills/destroy'
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/create'
  # get 'categories/update'
  # get 'categories/destroy'
  # get 'jobs/index'
  # get 'jobs/show'
  # get 'jobs/create'
  # get 'jobs/update'
  # get 'jobs/destroy'
  # get 'employers/index'
  # get 'employers/show'
  # get 'employers/create'
  # get 'employers/update'
  # get 'employers/destroy'
  # get 'links/index'
  # get 'links/show'
  # get 'links/create'
  # get 'links/update'
  # get 'links/destroy'

  # get '/auth/auth0/callback' => 'auth0#callback'
  # get '/auth/failure' => 'auth0#failure'
  # get '/auth/logout' => 'auth0#logout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :seeker_skills
      resources :seekers
      resources :skills
      resources :employers
      resources :links
      resources :jobs
      resources :categories
    end
  end

end
