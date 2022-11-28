class Bike < ApplicationRecord
  has_many :reservations

  validates :brand, :model, :photo, :power, :weight, :price, presence: true
end
