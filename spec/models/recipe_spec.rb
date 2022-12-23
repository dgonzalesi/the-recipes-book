require 'rails_helper'

RSpec.describe 'RecipeFood', type: :model do
  before(:each) do
		@user = User.create(
			name: 'Jose',
			email: 'jose@mail.com',
			password:'1234567',
			password_confirmation: '1234567'
		)

		@user.save
		@food = Food.new(
			user_id: @user.id,
			name: 'Pizza',
			measurment_unit: 'kg',
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
			expect(@recipe_food).to be_valid
		end

		it 'Name is required' do
			@recipe_food.name = nil
			expect(@recipe_food).to_not be_valid
		end

		it 'doesnt create the recipe without a user id/user' do
			@recipe_food.user_id = nil
			expect(@recipe_food).to_not be_valid
		end
end
