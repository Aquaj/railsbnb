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
  validates :washing_machine, presence: true
  validates :tv_wifi, presence: true
  validates :swimming_pool, presence: true
  validates :wheelchair, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
