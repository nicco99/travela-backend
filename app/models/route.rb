class Route < ApplicationRecord

    has_many :trips 
    has_many :buses, through: :trips
end

