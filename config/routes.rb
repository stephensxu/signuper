# == Route Map
#
#    Prefix Verb  URI Pattern               Controller#Action
#     users GET   /users(.:format)          users#index
#           POST  /users(.:format)          users#create
#  new_user GET   /users/new(.:format)      users#new
# edit_user GET   /users/:id/edit(.:format) users#edit
#      user GET   /users/:id(.:format)      users#show
#           PATCH /users/:id(.:format)      users#update
#           PUT   /users/:id(.:format)      users#update
#     login POST  /login(.:format)          sessions#create
#   session GET   /session(.:format)        sessions#show
#    logout GET   /logout(.:format)         sessions#destroy
#

Rails.application.routes.draw do

  root :to => 'users#index'

  resources :users, :except => :destroy

  controller :sessions do
    post '/login',          :action => 'create',          :as => 'login'
    get  '/session',        :action => 'show'
    get '/logout',          :action => 'destroy',         :as => 'logout'
  end

  get '/auth/facebook/callback', :to => 'sessions#create'
  get '/auth/facebook',                                   :as => "facebook_login" 
end
