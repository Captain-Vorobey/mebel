Rails.application.routes.draw do
  get 'basket/show'
  devise_for :users
  resources :orders
  resources :furnitures
  resources :manufacturers
  resources :categories

  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
