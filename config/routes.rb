Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :cities
  resources :users
  resources :services
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
