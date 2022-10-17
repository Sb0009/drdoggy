# frozen_string_literal: true
Rails.application.routes.draw do
  get 'doctors/index'
  get 'doctors/show'

  get '/email/:id/', to: "email#index", as: "email"
  post '/email/:id/', to: "email#send_mail", as: "send_email"
  root 'home#index'
  resources :doctors
  resources :patients
  devise_for :patients
  devise_for :doctors
  devise_for :users


end