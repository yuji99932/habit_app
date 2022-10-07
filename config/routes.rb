Rails.application.routes.draw do
  resources :tops, only: :index
  resources :introductions, only: :index
  devise_for :users
  root to: 'tops#index'
  resources :schedules do
    collection do
      get 'newhabit'
      get 'newschedule'
      post 'newhabit'
      post 'newschedule'
    end
  end
  resources :users, only: [:show, :edit, :update]
  resources :habits, only: [:index, :new, :create]
end
