Rails.application.routes.draw do
  resources :entries
  resources :examples
  resources :references
  resources :definitions
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/auth/github/callback', to: 'sessions#create'
end
