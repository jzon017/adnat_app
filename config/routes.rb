Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'pages/home'

  get 'pages/main'

  root 'pages#home'

  resources :users
  resources :sessions
  

  get 'pages/organizations'

  get 'pages/shifts'

  get 'users/new'
  get 'new', to: 'users#new'
  post 'new', to: 'users#create'

  get 'signin', to: 'sessions#new'
  get 'signout', to: 'sessions#destroy'
  post 'signin', to: 'sessions#create'

  get 'createorg', to: 'pages#main'
  post 'createorg', to: 'pages#getorg'


  get 'editorg', to: 'pages#main'
  post 'editorg', to: 'pages#orgedit'

  match '/pages/delete', to: 'pages#delete', via: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
