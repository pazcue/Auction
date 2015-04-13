Rails.application.routes.draw do

  get '/' => 'users#home'
  post '/submit' => 'users#create', as: 'users'
  get '/logout' => 'users#logout'

  get 'items/index'

  get 'items/new' => 'items#new'
  get 'items/all' => 'items#globalindex'
  post '/items/create' => 'items#create', as: 'items'

  get 'items/:id/bids/new' => 'bids#new', as: 'bidnew'
  post 'items/:id/bids' => 'bids#create'
  get 'items/:id/bids/' => 'bids#index', as: 'bids'



end
