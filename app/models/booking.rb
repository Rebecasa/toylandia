class Booking < ApplicationRecord
  belongs_to :toy
  belongs_to :user
  # belongs_to :user, optional: true
end
