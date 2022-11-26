class User < ApplicationRecord
  has_many :reservations

  validates :name, presence: true, length: { minimum: 3 }
  validates :name, uniqueness: true, on: :create
end
