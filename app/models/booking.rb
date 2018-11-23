class Booking < ApplicationRecord
  belongs_to :toy
  belongs_to :user
  has_many :messages
  def check_date
    start_date < end_date
  end
end
