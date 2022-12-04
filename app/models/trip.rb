class Trip < ApplicationRecord
    belongs_to :bus 
    belongs_to :route 

    has_many :bookings 
    has_many :passengers, through: :bookings

    validates :bus_id, presence: true
    validates :route_id, presence: true
    validates :departure, presence: true
end

