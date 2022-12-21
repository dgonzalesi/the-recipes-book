Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :foods
  resources :recipes
  root "recipes#index"

end

