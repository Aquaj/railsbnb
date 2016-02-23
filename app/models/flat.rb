class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :user, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :price, numericality => { :greater_than_or_equal_to => 0 }
