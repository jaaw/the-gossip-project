Rails.application.routes.draw do
  resources :gossips, except: [:destroy]
  resources :author
  resources :welcome, only: [:index, :show]
  resources :contact, only: [:index]
  resources :team, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
end
