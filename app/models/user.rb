class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_many :bookings
  has_many :flats

  validates :address, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true
end
