class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :user, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
  validates :bathroom, :numericality => { :greater_than_or_equal_to => 0 }
  validates :bedroom, :numericality => { :greater_than_or_equal_to => 0 }
  validates :departure_time, presence: true
  validates :departure_time, numericality: { greater_than_or_equal_to: 0, lesser_than: 23 }
  validates :washing_machine, inclusion: { in: [true, false] }
  validates :tv_wifi, inclusion: { in: [true, false] }
  validates :swimming_pool, inclusion: { in: [true, false] }
  validates :wheelchair, inclusion: { in: [true, false] }

  # has_attachments :photos, maximum: 3, minimum: 1

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :photo, PhotoUploader
end
