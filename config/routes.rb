# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new'
  # get 'cocktails/:id', to: 'cocktails#show'
  # post 'cocktails', to: 'cocktails#create'
  root 'cocktails#index'
  resources :cocktails, only: %i[index new show create destroy] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: [:destroy]
end
