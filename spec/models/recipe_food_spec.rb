require 'rails_helper'

RSpec.describe RecipeFood, type: :model do

	  before(:each) do
	@user = User.create(
	  name: 'jose',
	  email: 'jose@email.com',
	  password: '1234567',
	  password_confirmation: '1234567'
	)
	@food = Food.create(
			  user: @user,
			  name: 'pizza',
			  measurment_unit: 'kg',
			  price: 15
			)
	@recipe = Recipe.create(
			  user:	@user,
			  name: 'pizza burrata',
			  description: 'pizza burrata description',
			  public: true

			)

	@recipe_food = recipe: :@recipe.recipe_foods.create(
			  food_id: @food.id,
			  recipe_id: @recipe.id
			  quantity: 1,
			)
		end

	it 'is only valid with a recipe_id and user_id' do
		expect(@recipe_food).to be_valid
	end

	it 'is not valid without a recipe_id' do
		@recipe_food.recipe_id = nil
		expect(@recipe_food).to_not be_valid
	end

	it 'is not valid without a food_id' do
		@recipe_food.food_id = nil
		expect(@recipe_food).to_not be_valid
	end

	it 'is valid with a quantity of 1 or greater than that' do
		@recipe food.recipe_id = nil
		expect(@recipe_food).to_not be_valid
	end

	it 'is not valid with a quantity of 0 or less than that' do
		@recipe_food.quantity = 0
		expect(@recipe_food).to_not be_valid
	end
end
