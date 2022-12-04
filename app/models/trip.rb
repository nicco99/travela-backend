class Trip < ApplicationRecord
    belongs_to :route
    has_many :bookings
end
