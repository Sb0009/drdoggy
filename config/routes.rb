# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :doctors, :patients, :specialities, :cities, :home

  # You can have the root of your site routed with "root"
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/doctors/new' => 'doctors#new'
  get '/doctors/:id' => 'doctors#show'
  get '/doctors' => 'doctors#index'
  post '/doctors' => 'doctors#create'
  get '/doctors/edit/:id' => 'doctors#edit'
  patch '/doctors/:id' => 'doctors#update'
  get '/doctors/destroy/:id' => 'doctors#destroy'
  get '/specialities' => 'specialities#index'
  get '/patients' => 'patients#index'
  get '/patients/new' => 'patients#new'
  post '/patients' => 'patients#create'
  get '/patients/destroy/:id' => 'patients#destroy'
  get '/patients/:id' => 'patients#show'
  get '/patients/edit/:id' => 'patients#edit'

  get '/appointments/new' => 'appointments#new'
  get '/appointments' => 'appointments#index'
  post '/appointments' => 'appointments#create'
  get '/appointments/edit/:id' => 'appointments#edit'
  get '/appointments/destroy/:id' => 'appointments#destroy'







  # get '/cities', to: 'cities#index'
  # get '/cities/new', to: 'cities#new'
  # get '/cities/:id/update', to: 'cities#update'
  # patch '/cities/:id', to: 'cities#updated'
  # get '/cities/:id', to: 'cities#show'
  # post '/cities', to: 'cities#create'
  #
  #
  # get '/cities/:city_id/doctors', to: 'doctors#index'
  # get '/cities/:city_id/doctors/new', to: 'cities_doctors#new'
  # post '/cities/:city_id/doctors', to: 'cities_doc

  # devise_for :users
  devise_for :patients
  devise_for :doctors
  devise_for :users
end
