class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :size, presence: true
  validates :art_type, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

end
