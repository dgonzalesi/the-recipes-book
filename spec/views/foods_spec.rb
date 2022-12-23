require 'rails_helper'

RSpec.describe 'Rendering foods page', type: :request do
  describe 'Testing signin page' do
    before(:each) do
      visit user_session_path

      @user = User.new(
        name: 'jose',
        email: 'jose@mail.com',
        password: '1234567',
        password_confirmation: '1234567'
      )

      @user.save!

      visit foods_path

      @food_list = Food.create(user_id: @user.id, name: 'pizza', measurment_unit: 'kg', price: '15')
    end

    feature 'Testing food index page' do
      background { visit foods_path }

      scenario 'It should display pizza' do
        expect(page).to have_content('pizza')
      end

      scenario 'It should display Public' do
        expect(page).to have_content('Public')
      end
    end
  end
end
