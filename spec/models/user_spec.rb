require 'rails_helper'
RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'Test User')
    @user.save
  end
  it 'is Valid' do
    expect(@user).to be_valid
  end
  it 'should not be invalid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end
  it 'should not be valid with a name with lenght of 20 or more' do
    @user.name = 'Test User Other Name dawdad'
    expect(@user).to_not be_valid
  end
  it 'should not be valid since the name has already been taken' do
    @new_user = User.create(name: 'Test User')
    expect(@new_user).to_not be_valid
  end
  # from here on we will be checking connections betwwn the objects
  it 'has 1 reservation' do
    @bike = Bike.create(brand: 'testing bike...',
                        model: 'testing bike...',
                        photo: 'https://images.ctfassets.net/x7j9qwvpvr5s/2DFD4d569TegcMRxUH8wLy/5973feabf0df731afdfdda82ed8d6caa/MONSTER_SP_TURNTABLE_00.png?w=1920&fm=webp&q=95',
                        power: 111,
                        weight: 1111,
                        price: 1111)
    Reservation.create(user_id: @user.id, bike_id: @bike.id, date: '27/06/2023', location: 'São Paulo - BR')
    expect(@user.reservations.count).to eq 1
  end
end
