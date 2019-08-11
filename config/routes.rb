Rails.application.routes.draw do
  resources :item_reviews
  resources :measurements
  resources :charges

  resources :requests
  resources :watch_items
  resources :orders
  get '/items/search', to: 'items#search'
  get '/items/fresh', to: 'items#fresh'
  resources :items
  resources :watchlists
  resources :item_categories
  resources :profiles
  resources :user_ratings
  devise_for :users
  resources :locations
  resources :cities
  resources :states
  resources :roles
  resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get '/welcome/about_us', to: 'welcome#about_us'
end
