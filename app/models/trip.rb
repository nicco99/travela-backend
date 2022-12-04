class Trip < ApplicationRecord
    belongs_to :bus 
    belongs_to :route 

    has_many :bookings 
    has_many :passengers, through: :bookings
end

