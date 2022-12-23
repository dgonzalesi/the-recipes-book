require 'rails_helper'

RSpec.describe 'RecipeFood', type: :model do
  before(:each) do
    @user = User.create(
      name: 'Jose',
      email: 'jose@mail.com',
      password: '1234567',
      password_confirmation: '1234567'
    )

    @user.save
    @food = Food.create(
      user_id: @user.id,
      name: 'Pizza',
      measurement_unit: 'kg',
      price: 15,
      quantity: 1
    )
    @recipe = Recipe.create(
      user_id: @user.id,
      name: 'pizza burrata',
      preparation_time: 30,
      cooking_time: 30,
      description: 'pizza burrata description',
      public: true
    )
  end

  it 'is created succesfully' do
    @recipe_food = @recipe.recipe_foods.create(
      food_id: @food.id,
      recipe_id: @recipe.id,
      quantity: 1
    )
    expect(@recipe_food).to be_valid
  end
end
