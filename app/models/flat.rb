class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :user, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
