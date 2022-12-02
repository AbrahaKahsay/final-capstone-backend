require 'rails_helper'

RSpec.describe Reservation, type: :request do
    before(:all) do
    Rails.application.load_seed
  end
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/users/1/reservations'
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET /show' do
    it 'returns http success' do
      get '/api/v1/users/1/reservations/1'
      expect(response).to have_http_status(:success)
    end
  end
end
