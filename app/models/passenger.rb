class Passenger < ApplicationRecord
    has_secure_password
    validates :username,:email,:p_number,:password_digest, presence: true
    validates :username, uniqueness: true

    has_many :bookings, dependent: :destroy
    has_many :trips, through: :bookings 
end


