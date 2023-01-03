require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /login' do
    it 'returns http success' do
      get '/api/v1/login'
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/users'
      expect(response).to have_http_status(:success)
    end
  end
end
