class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :flat

  validates :user_id, presence: true
  validates :flat_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

#  validate :overlap_booking

  scope :overlapping, ->(a) {
    where(%q{ (start_date, end_date) OVERLAPS (?, ?) }, a.start_date, a.end_date)
    .where(flat_id: a.flat.id)
  }

  def overlapping?
    self.class.overlapping(self).count > 0
  end

protected

  def overlap_booking
    if overlapping?
      errors[:base] << "These booking dates are not available."
    end
  end
end
