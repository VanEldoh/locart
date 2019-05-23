class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  validates :size, presence: true
  validates :type, presence: true
  validates :category, presence: true
  validates :price, presence: true
end
