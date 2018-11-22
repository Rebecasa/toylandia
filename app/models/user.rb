class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :toys, dependent: :delete_all
  has_many :messages, dependent: :delete_all
  # Will delete foreign_keys related to user when deleting user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
end
