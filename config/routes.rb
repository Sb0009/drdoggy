# frozen_string_literal: true
Rails.application.routes.draw do
  get 'doctors/index'
  get 'doctors/show'
  root 'home#index'
  devise_for :patients
  devise_for :doctors
  devise_for :users


end