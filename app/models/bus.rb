class Bus < ApplicationRecord

    has_many :trips 
    has_many :routes, through: :trips
end

