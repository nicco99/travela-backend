class Booking < ApplicationRecord
    belongs_to :trip 
    belongs_to :passenger
    has_many :review
end
