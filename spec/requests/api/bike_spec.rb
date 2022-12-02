require 'swagger_helper'

RSpec.describe 'api/bike', type: :request do
  path '/bikes' do

    post 'Creates a bike' do
      tags 'Bikes'
      consumes 'application/json'
      parameter name: :bike, in: :body, schema: {
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

      response '201', 'bike created' do
        let(:bike) { { brand: 'foo', model: 'bar', photo: 'footo', power: 9001, weight: 3, price: 8, description: 'bar' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:bike) { { title: 'foo' } }
        run_test!
      end

      get 'Retrieves bikes' do
        tags 'Bikes'
        consumes 'application/json'
        parameter name: :bike, in: :body, schema: {
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
  
        response '201', 'bike created' do
          let(:bike) { { brand: 'foo', model: 'bar', photo: 'footo', power: 9001, weight: 3, price: 8, description: 'bar' } }
          run_test!
        end
  
        response '422', 'invalid request' do
          let(:bike) { { title: 'foo' } }
          run_test!
        end
      end
  end

  path '/bikes/{id}' do

    get 'Retrieves a bike' do
      tags 'Bikes', 'Another Tag'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string
      request_body_example value: { some_field: 'Foo' }, name: 'basic', summary: 'Request example description'

      response '200', 'bike found' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            title: { type: :string },
            content: { type: :string }
          },
          required: [ 'id', 'title', 'content' ]

        let(:id) { Bike.create(title: 'foo', content: 'bar').id }
        run_test!
      end

      response '404', 'bike not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
