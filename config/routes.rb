Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', :action => :index, :on => :collection, :as => ''
  end


  resources :definitions
  resources :examples
  resources :references
  resources :entries, :concerns => :paginatable


  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/auth/github/callback', to: 'sessions#create'
end
