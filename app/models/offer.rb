class Offer < ApplicationRecord
  has_many :reviews
  has_many :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :description, length: { minimum: 10 }
  validates :skill, presence: true
end
