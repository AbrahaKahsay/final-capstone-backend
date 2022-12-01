class Bike < ApplicationRecord
  has_many :reservations

  validates :brand, :model, :photo, :power, :weight, :price, :description, presence: true
end
