class Toy < ApplicationRecord
  geocoded_by :location
  mount_uploader :photo, PhotoUploader

  belongs_to :user

  has_many :bookings, dependent: :delete_all
  has_many :reviews, dependent: :delete_all

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :category, inclusion: {
    in: %w(cars cuddly creepy educational other)
  }
  after_validation :geocode, if: :will_save_change_to_location?
end
