class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
  validates :status, inclusion: { in: ["Pending", "Accepted", "Declined"] }
end
