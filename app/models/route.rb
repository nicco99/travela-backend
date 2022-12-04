class Route < ApplicationRecord
    has_many :trips, dependent: :destroy
    has_many :buses, through: :trips

    # validates :price, presence: true, numericality: true
    # validates :start, presence: true, inclusion: {in: ["MOMBASA", "NAIROBI", "NAKURU"]}
    # validates :destination, presence: true, inclusion: {in: ["MOMBASA", "NAIROBI", "NAKURU"]}

end

