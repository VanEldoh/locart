class Artwork < ApplicationRecord
  ARTSIZE = ['small', 'medium', 'large']
  ARTTYPE = ['Painting', 'Photography', 'Prints', 'Sculpture', 'Work on Paper', 'Design', 'Drawing', 'Installation', 'Film/Video']
  ARTCATEGORY = ['Black & White', 'Graphik', 'Expressive', 'Colored']
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :size, presence: true
  validates :art_type, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
