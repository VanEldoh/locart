class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
  validates_uniqueness_of :artwork_id, :scope => [:user_id]
end
