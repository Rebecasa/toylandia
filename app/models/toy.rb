class Toy < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, inclusion: {
    in: %w(cars cuddly creepy educational other)
  }
end
