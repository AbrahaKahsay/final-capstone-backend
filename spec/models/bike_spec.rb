require 'rails_helper'
RSpec.describe Bike, type: :model do
  before :each do
    @bike = Bike.new(brand: 'testing bike brand...',
                     model: 'testing bike model...',
                     photo: 'photo.jpg',
                     power: 11_111,
                     weight: 11_111,
                     price: 11_111)
    @bike.save
  end
  it 'is Valid' do
    expect(@bike).to be_valid
  end

  it 'should not be invalid without a model' do
    @bike.model = nil
    expect(@bike).to_not be_valid
  end

  it 'should not be invalid without a brand' do
    @bike.brand = nil
    expect(@bike).to_not be_valid
  end
  it 'should not be invalid without a price' do
    @bike.price = nil
    expect(@bike).to_not be_valid
  end
  it 'should not be invalid without a photo' do
    @bike.photo = nil
    expect(@bike).to_not be_valid
  end
  it 'should not be invalid without a weight' do
    @bike.weight = nil
    expect(@bike).to_not be_valid
  end
  it 'should not be invalid without a power' do
    @bike.power = nil
    expect(@bike).to_not be_valid
  end
  # # from here on we will be checking connections betwwn the objects
  it 'has 1 reservation' do
    @user = User.create(name: 'Test User')
    Reservation.create(user_id: @user.id, bike_id: @bike.id, date: '27/06/2023', location: 'São Paulo - BR')
    expect(@bike.reservations.count).to eq 1
  end
end
