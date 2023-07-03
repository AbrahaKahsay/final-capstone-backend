require 'rails_helper'
RSpec.describe Reservation, type: :model do
  before :each do
    @user = User.create(name: 'Test User')
    @bike = Bike.create(brand: 'testing bike brand...',
                        model: 'testing bike model...',
                        photo: 'photo.jpg',
                        power: 11_111,
                        weight: 11_111,
                        price: 11_111)
    @reservation = Reservation.new(user_id: @user.id, bike_id: @bike.id, date: '27/06/2023', location: 'São Paulo - BR')
    @reservation.save
  end
  it 'is Valid' do
    expect(@reservation).to be_valid
  end

  # check if values are valid
  it 'should not be invalid without a date' do
    @reservation.date = nil
    expect(@reservation).to_not be_valid
  end

  it 'should not be invalid without a location' do
    @reservation.location = nil
    expect(@reservation).to_not be_valid
  end

  # # # from here on we will be checking connections betwwn the objects
  it 'bike has 1 reservation' do
    expect(@bike.reservations.count).to eq 1
  end
  it 'user has 1 reservation' do
    expect(@user.reservations.count).to eq 1
  end
end
