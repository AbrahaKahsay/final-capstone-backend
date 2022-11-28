class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :date, :location, :bike_id, :user_id, presence: true
end
