Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :orders
  resources :vendors
  resources :lists
  resources :items

  root 'users#index'
end
