Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }

  resources :recipes, only: %i[index show new create destroy] do
  resources :recipe_foods, only: %i[new create destroy update edit]
  end
  resources :foods
  resources :recipes
  resources :public_recipes
  resources :users do
  resources :foods, only: %i[index new create]
  resources :recipes, only: %i[index show new create destroy] do
  resources :recipe_foods, only: %i[new create destroy]
     end
  end

  root "recipes#index"

end

