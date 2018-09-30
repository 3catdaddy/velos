class Bike < ApplicationRecord
    validates :name, presence: true, uniqueness: true  
    has_many :bikes, :through => :bookings 
    has_many :bookings, :dependent => :destroy
end
