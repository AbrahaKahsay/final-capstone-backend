class Bike < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :brand, :model, :photo, :power, :weight, :price, :description, presence: true
end
