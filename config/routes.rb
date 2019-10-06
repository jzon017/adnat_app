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

  get 'shifts/shifts'

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

  get 'shifts', to: 'shifts#add_shift'
  post 'shifts', to: 'shifts#add_shift'

  get 'shift_out', to: 'shifts#shifts'
  post 'shift_out', to: 'shifts#add_shift'
  #get 'shifts', to: 'shifts#shift_out'
  #post 'shifts', to: 'shifts#shift_out'

  match '/pages/delete', to: 'pages#delete', via: :delete

  get 'pages/leave', to: 'pages#leave'

  get 'pages/join', to: 'pages#join'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
