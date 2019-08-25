Rails.application.routes.draw do
  post 'messages/reply', to: "messages#reply"
  resources :messages
  get 'conversations/my_conversations', to: 'conversations#my_conversations'
  resources :conversations
  resources :charges
  resources :watch_items
  get '/items/search', to: 'items#search'
  get '/items/fresh', to: 'items#fresh'
  get '/items/my_items', to: 'items#my_items'
  resources :items
  resources :watchlists
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get '/welcome/about_us', to: 'welcome#about_us'
  get '/welcome/disclaimer',to: 'welcome#disclaimer'
  get '/welcome/oops', to: 'welcome#oops'
end
