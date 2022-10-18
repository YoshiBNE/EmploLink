Rails.application.routes.draw do

  get 'categories/index'
  get 'categories/show'
  get 'categories/create'
  get 'categories/update'
  get 'categories/destroy'
  get 'jobs/index'
  get 'jobs/show'
  get 'jobs/create'
  get 'jobs/update'
  get 'jobs/destroy'
  get 'employers/index'
  get 'employers/show'
  get 'employers/create'
  get 'employers/update'
  get 'employers/destroy'
  get 'links/index'
  get 'links/show'
  get 'links/create'
  get 'links/update'
  get 'links/destroy'
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
