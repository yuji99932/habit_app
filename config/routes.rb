Rails.application.routes.draw do
  resources :tops, only: :index
  resources :introductions, only: :index
  devise_for :users
  root to: 'tops#index'
  resources :schedules
  resources :users, only: [:show, :edit, :update]
end
