Rails.application.routes.draw do
  resources :item_reviews
  resources :measurements
  resources :charges

  resources :requests
  resources :watch_items
  resources :orders
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'item_reviews#index'
end
