class Passenger < ApplicationRecord
    has_secure_password
    validates :username,:email,:p_number,:password_digest, presence: true

    has_many :bookings 
    has_many :trips, through: :bookings 
end


