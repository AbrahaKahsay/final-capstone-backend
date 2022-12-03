require 'swagger_helper'
# rubocop:disable Metrics/BlockLength
RSpec.describe 'api/v1/bikes', type: :request do
    before(:all) do
    Rails.application.load_seed
  end
  path '/api/v1/bikes' do
    get('list bikes') do
      tags 'Bikes'
      response(200, 'successful') do
        example 'application/json', :all_bikes,
        [
          {
            id: 1,
            brand: "Ducati",
            model: "Monster SP",
            photo: "https://images.ctfassets.net/x7j9qwvpvr5s/2DFD4d569TegcMRxUH8wLy/5973feabf0df731afdfdda82ed8d6caa/MONSTER_SP_TURNTABLE_00.png?w=1920&fm=webp&q=95",
            power: 111,
            weight: 166,
            price: 110,
            created_at: "2022-12-01T16:33:06.036Z",
            updated_at: "2022-12-01T16:33:06.036Z",
            description: "The Monster range grows with the SP version, designed to enhance fun, thanks to technical equipment perfect for those who love sporty riding and embellish style with the Moto GP-inspired livery."
          },
          {
            id: 2,
            brand: "Ducati",
            model: "Multistrada V4 Rally",
            photo: "https://images.ctfassets.net/x7j9qwvpvr5s/2VZgctf0yUAly2md6gc1Ac/fcef1cda0e65d0173fdedca81157fa52/MSV4_RALLY_RED_47.png?w=1920&fm=webp&q=95",
            power: 170,
            weight: 227,
            price: 200,
            created_at: "2022-12-01T16:33:06.042Z",
            updated_at: "2022-12-01T16:33:06.042Z",
            description: "The new Multistrada V4 Rally is the ideal travel companion in all conditions, as easy and intuitive in the urban jungle as it is on the most daring off-road routes."
          },
          {
            id: 3,
            brand: "Ducati",
            model: "Diavel V4",
            photo: "https://images.ctfassets.net/x7j9qwvpvr5s/1dL0ilx4g9eUV1NHfvLeHE/ca7707e59bab41e8a6181ce9f9a84aaf/SPIN_DIAVEL_V4_RED.01.png?w=1920&fm=webp&q=95",
            power: 168,
            weight: 211,
            price: 180,
            created_at: "2022-12-01T16:33:06.050Z",
            updated_at: "2022-12-01T16:33:06.050Z",
            description: "Muscular, sporty, exaggerated and elegant at the same time, able to magnetize attention in any context, Diavel V4 synthesizes seemingly distant technical, dynamic and stylistic features, such as those of sport nakeds and muscle cruisers."
          },
          {
            id: 4,
            brand: "Ducati",
            model: "DesertX",
            photo: "https://images.ctfassets.net/x7j9qwvpvr5s/VHOopIiazWZ7RFWig61gd/25cec23c87f1be55054bfb177998416e/DESERT_X_TURNTABLE_VER_G_00.png?w=1920&fm=webp&q=95",
            power: 110,
            weight: 202,
            price: 150,
            created_at: "2022-12-01T16:33:06.054Z",
            updated_at: "2022-12-01T16:33:06.054Z",
            description: "Exploration. Fun. Performance. And a great desire to take and leave towards the horizon. The identity of this bike leaves no room for doubt: just looking at it, it brings you into the atmosphere of Dakar racing."
          },
          {
            id: 5,
            brand: "Ducati",
            model: "Panigale V4 R",
            photo: "https://images.ctfassets.net/x7j9qwvpvr5s/785XKRCdpoCCJBmkJBag9x/65cbac2f5e2d40201f845ccd68bbb46c/PANV4R_SPIN_SCARICO_ALTO_E_FRIZIONE_00.png?w=1920&fm=webp&q=95",
            power: 237,
            weight: 167,
            price: 330,
            created_at: "2022-12-01T16:33:06.060Z",
            updated_at: "2022-12-01T16:33:06.060Z",
            description: "Ducati presents the new Panigale V4 R: the bike that adopts technical solutions previously reserved for MotoGP and WorldSBK Championship. The closest production model to a competition bike ever."
          }
        ]
        run_test!
      end
    end

    post('create bike') do
      tags 'Bikes'
      consumes 'application/json'
      parameter name: :create_bike, in: :body, schema: {
        type: :object,
        properties: {
          brand: { type: :string },
          model: { type: :string },
          photo: { type: :string },
          power: { type: :integer },
          weight: { type: :integer },
          price: { type: :integer },
          description: { type: :text }
        },
        required: [ 'brand', 'model', 'photo', 'power', 'weight', 'price', 'description' ]
      }
      parameter name: :Authorization, in: :header, type: :string, description: 'Bearer **'
      response(200, 'successful') do
        let(:create_bike) { { brand: 'foo', model: 'bar', photo: 'footo', power: 9001, weight: 3, price: 8, description: 'bar' } }
        example 'application/json', :create_bike, {
          id: 5,
          brand: "foo",
          model: "bar",
          photo: "footo",
          power: 9001,
          weight: 3,
          price: 8,
          created_at: "2022-12-01T16:33:06.060Z",
          updated_at: "2022-12-01T16:33:06.060Z",
          description: "bar"
      }
        run_test!
      end
    end
  end

  path '/api/v1/bikes/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show bike') do
      tags 'Bikes'
      response(200, 'successful') do
        let(:id) { '1' }
        example 'application/json', :create_bike, {
          id: 1,
          brand: "Ducati",
          model: "Monster SP",
          photo: "https://images.ctfassets.net/x7j9qwvpvr5s/2DFD4d569TegcMRxUH8wLy/5973feabf0df731afdfdda82ed8d6caa/MONSTER_SP_TURNTABLE_00.png?w=1920&fm=webp&q=95",
          power: 111,
          weight: 166,
          price: 110,
          created_at: "2022-12-01T16:33:06.036Z",
          updated_at: "2022-12-01T16:33:06.036Z",
          description: "The Monster range grows with the SP version, designed to enhance fun, thanks to technical equipment perfect for those who love sporty riding and embellish style with the Moto GP-inspired livery."
      }
        run_test!
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
