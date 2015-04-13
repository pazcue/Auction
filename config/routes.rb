Rails.application.routes.draw do

  get '/logout' => 'users#logout'
  get 'items/new' => 'items#new'
  post '/items/create' => 'items#create', as: 'items'

  get 'items/index'

  get 'items/edit'

  get '/' => 'users#home'
  post '/submit' => 'users#create', as: 'users'


end
