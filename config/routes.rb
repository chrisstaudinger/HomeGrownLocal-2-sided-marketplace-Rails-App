Rails.application.routes.draw do
  resources :item_reviews, path: 'item_review_path'
  resources :measurements
  resources :charges, path: 'charge_path'

  resources :requests, path: 'request_path'
  resources :watch_items, path: 'watch_item_path'
  resources :orders, path: 'order_path'
  resources :items, path: 'item_path'
  resources :watchlists, path: 'watchlist_path'
  resources :item_categories, path: 'item_category_path'
  resources :profiles, path: 'profile_path'
  resources :user_ratings, path: 'user_rating_path'
  devise_for :users, path: 'user_path'
  resources :locations
  resources :cities
  resources :states
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'
end
