require 'rails_helper'

RSpec.describe 'User', type: :request do
  describe 'GET /index' do
    it 'returns a 200 OK status' do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end

    it 'checks if the response body includes correct placeholder text' do
      get 'http://localhost:3000/useres/sign_up'
      expect(response.body).to include('Name')
    end
  end
end
