class Toy < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  # TODO: add validation for category -> included in arr of categories
end
