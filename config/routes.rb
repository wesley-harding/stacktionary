Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', :action => :index, :on => :collection, :as => ''
  end

  concern :votable do
    member do
      put 'upvote', :action => :upvote
      put 'downvote', :action => :downvote
    end
  end

  resources :definitions
  resources :examples
  resources :references
  resources :entries, :concerns => [:paginatable, :votable]

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/auth/github/callback', to: 'sessions#create'
end
