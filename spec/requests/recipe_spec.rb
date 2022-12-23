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

    feature 'You need to sign in or sign out' do
      scenario 'shows a list of posts' do
        visit '/recipes'
        expect(page).to have_content('You need to sign in or sign up before continuing.')
      end
    end

    feature 'Testing post index page' do
      background { visit recipes_path }

      scenario 'I cant see the title' do
        expect(page).to_not have_content('Recipes')
      end

      scenario 'I can see the sign out button' do
        expect(page).to have_content('Sign')
      end
    end
  end
end
