require 'rails_helper'

RSpec.describe 'Recipes', type: :feature do
	describe 'Testing sign up page' do
		before(:each) do
			visit user_session_path
			@user = User.new(
				name: 'Jose',
				email: 'jose@mail.com',
				password: '1234567',
				password_confirmation: '1234567'
			)
			@user.save!
		  visit foods_path
			@food_list = Food.create(name: 'Ceviche', measurement_unit: 'kg', price: 30)
		end

		feature 'Testing post index page' do
			background { visit foods_path }

			scenario 'I cant see the title' do
				expect(page).to_not have_content('Foods')
			end

			scenario 'I can see the sign out button' do
				expect(page).to have_content('Sign')
			end
		end
	end
end