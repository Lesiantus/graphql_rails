Rails.application.routes.draw do
  resources :sessions, only: %i[new create destroy]
  resources :users, only: %i[new create]
  resources :posts
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  root "posts#index"
end
