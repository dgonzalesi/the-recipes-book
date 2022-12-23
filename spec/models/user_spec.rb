require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Jose', email: 'jose@mail.com', password: '1234567')
    @user.save
  end

  it 'is created succesfully' do
    expect(@user).to be_valid
  end

  it 'name is required' do
    expect(@user).to be_valid
    @user.name = nil
    expect(@user).not_to be_valid
  end

  it 'is not valid without email' do
    @user.email = nil
    expect(@user).not_to be_valid
  end

  it 'is not valid without password' do
    @user.password = ''
    expect(@user).not_to be_valid
  end
end
