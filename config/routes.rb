Rails.application.routes.draw do
  get 'recipe_foods/new'
  get 'recipe_foods/create'
  get 'recipe_foods/destroy'
  get 'recipe_foods/update'

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :foods
  resources :recipes do
    resources :recipe_foods, only: %i[new create destroy update edit]
  end
  resources :users, only: [:show]
  root "recipes#index"

end

