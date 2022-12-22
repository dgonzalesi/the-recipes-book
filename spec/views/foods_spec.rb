require 'rails_helper'

RSpec.describe 'Foods', type: :request do

	before(:each) do

			visit user_session_path

			@user = User.create(
			name: 'jose',
			email: 'jose@mail.com',
			password:'1234567',
			password_confirmation: '1234567'
			)
		end
			visit foods_path

			@food = Food.create(
			name: 'pizza',
			measurment_unit: 'kg',
			price: '15'
			)
		end

		feature 'Testing food index page' do
			background { visit foods_path }

			scenario 'It should display pizza' do
				expect(page).to have_content 'pizza'
			end

			scenario 'It should display Public' do
				expect(page).to have_content 'Public'
			end
		end
	end
end
