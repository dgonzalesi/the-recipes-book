require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  before(:each) do
    @user = User.create(
      name: 'jose',
      email: 'jose@mail.com',
      password: '123456',
      password_confirmation: '123456'
    )
  end
end
