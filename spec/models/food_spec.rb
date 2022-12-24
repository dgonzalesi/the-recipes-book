require 'rails_helper'

RSpec.describe 'Food', type: :request do
  before(:each) do
    @user = User.create(
      name: 'Jose',
      email: 'jose@email.com',
      password: '1234567',
      password_confirmation: '1234567'
    )
    @food = Food.create(
      user_id: @user.id,
      name: 'pizza',
      measurement_unit: 'kg',
      price: 15
    )
  end

  it 'is created succesfully' do
    expect(@food).to be_valid
  end

  it 'is not created succesfully without a user' do
    @food.user = nil
    expect(@food).to_not be_valid
  end

  it 'is not created succesfully without a name' do
    @food.name = nil
    expect(@food).to_not be_valid
  end

  it 'is not created succesfully without a measurement_unit' do
    @food.measurement_unit = nil
    expect(@food).to be_valid
  end

  it 'is not created succesfully without a price' do
    @food.price = nil
    expect(@food).to be_valid
  end

  it 'is not able to add a repeated ingredient/food name' do
    @food = Food.create(user_id: @user.id, name: 'pizza', price: 15, measurement_unit: 'kg')
    expect(@food).to be_valid
  end
end
