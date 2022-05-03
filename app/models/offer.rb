class Offer < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :description, length: { minimum: 20 }
  validates :skill, presence: true
end
