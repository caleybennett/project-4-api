# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comments
  resources :books
  resources :bookclub_members
  resources :bookclubs
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
