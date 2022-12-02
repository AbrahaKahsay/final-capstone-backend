require 'rails_helper'

RSpec.describe Bike, type: :request do
    before(:all) do
    Rails.application.load_seed
  end
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/bikes'
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET /show' do
    it 'returns http success' do
      get '/api/v1/bikes/1'
      expect(response).to have_http_status(:success)
    end
    it 'returns bike json' do
      get '/api/v1/bikes/1'
      expect(response.body).to eq(Bike.first.to_json)
    end
  end
end
