class Booking < ApplicationRecord
    belongs_to :trip 
    belongs_to :passenger

    validates :status, inclusion: {in: ["Paid", "Confirmed", "Pending", "Cancelled"]}
end
