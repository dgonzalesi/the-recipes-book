Rails.application.routes.draw do

  devise_for :users
  resources :foods
  resources :recipes
  root "recipes#index"
end

