class Artwork < ApplicationRecord
  ARTSIZE = ['All sizes', 'small', 'medium', 'large']
  ARTTYPE = ['All types', 'Painting', 'Photography', 'Prints', 'Sculpture', 'Work on Paper', 'Design', 'Drawing', 'Installation', 'Film/Video']
  ARTCATEGORY = ['All Categories', 'Black & White', 'Graphik', 'Expressive', 'Colored']
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :size, presence: true
  validates :art_type, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
