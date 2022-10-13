# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :patients
  devise_for :doctors
  devise_for :users
  get 'doctor/list'
  get 'doctor/new'
  post 'doctor/create'
  patch 'doctor/update'
  get 'doctor/list'
  get 'doctor/show'
  get 'doctor/edit'
  get 'doctor/delete'
  get 'doctor/update'
  get 'doctor/show_patients'
end