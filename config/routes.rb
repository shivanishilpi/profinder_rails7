Rails.application.routes.draw do
  devise_for :agents
  resources :mailers
  resources :images
  resources :plants
  resources :users do
     collection do
      get :fetch_country_states
     end
  end
  root 'home#index'
  get 'tool/index'  
  patch 'drag/plant'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
