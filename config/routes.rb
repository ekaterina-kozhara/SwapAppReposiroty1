Rails.application.routes.draw do
  resources :favourites
  resources :service_images
  devise_for :users
  resources :categories
  resources :cities
  resources :users
  resources :services
  post 'services/add_to_favourite'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
