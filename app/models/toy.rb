class Toy < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :delete_all
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :category, inclusion: {
    in: %w(cars cuddly creepy educational other)
  }
  # TODO: add validation for category -> included in arr of categories
end
