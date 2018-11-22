class Booking < ApplicationRecord
  belongs_to :toy
  belongs_to :user
  # belongs_to :user, optional: true
  has_one :chat
  def check_date
    start_date < end_date
  end
end
