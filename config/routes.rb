# frozen_string_literal: true
Rails.application.routes.draw do
  get 'doctors/index'
  get 'doctors/show'
  get 'cities/show'

  post '/submit' => 'doctors#submit'
  post '/submit' => 'admin/doctors#submit'
  post '/submit' => 'admin/patients#submit'
  patch '/update' => 'patients#submit'

  get '/email/:id/', to: "email#index", as: "email"
  post '/email/:id/', to: "email#send_mail", as: "send_email"
  root 'home#index'
  resources :doctors
  resources :patients
  resources :cities
  devise_for :patients
  devise_for :doctors
  devise_for :users


end