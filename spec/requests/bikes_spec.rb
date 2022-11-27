require 'rails_helper'

RSpec.describe 'Bikes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/bikes'
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET /show' do
    it 'returns http success' do
      Bike.create(brand: 'Ducati',
                  id: 50,
                  model: 'Monster SP',
                  photo: 'https://images.ctfassets.net/x7j9qwvpvr5s/2DFD4d569TegcMRxUH8wLy/5973feabf0df731afdfdda82ed8d6caa/MONSTER_SP_TURNTABLE_00.png?w=1920&fm=webp&q=95',
                  power: 111,
                  weight: 166,
                  price: 110)
      get '/api/v1/bikes/50'
      expect(response).to have_http_status(:success)
    end
  end
end
