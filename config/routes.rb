# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'

  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create]
  end

  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
