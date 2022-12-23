require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'index page' do
    before(:each) do
      @first_recipe = Recipe.create(
        name: 'first',
        preparation_time: '1 hour',
        cooking_time: '40',
        description: 'Spicy',
        public: true
      )
    end

    feature 'Testing post index page' do
      scenario 'shows a list of posts' do
        visit '/recipes'
        expect(page).to have_content('first')
      end
    end

    feature 'Testing post index page' do
      background { visit public_recipes_index_path }

      scenario 'I can see the title' do
        expect(page).to have_content('Public')
      end

      scenario 'I can see the sign out button' do
        expect(page).to have_content('Sign')
      end
    end
  end
end
