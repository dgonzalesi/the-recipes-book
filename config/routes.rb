Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :foods
  resources :recipes
  resources :users, only: [:show]
  root "recipes#index"

end

