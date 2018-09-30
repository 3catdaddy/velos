class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  validate :date_validation

  def date_validation
    if self.start >= self.end
        errors.add(:start, "Start date cant be equal or negative ") 
    end
    @bookings = Booking.all
    @bookings.each do |item|
      if self != item && self.start < item.end && self.end > item.start
      errors.add(:base, "already reserved") 
      end
    end
  end
end

