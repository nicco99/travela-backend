class Passenger < ApplicationRecord
    validates :username,:email,:p_number,:password_digest, presence: true
end
