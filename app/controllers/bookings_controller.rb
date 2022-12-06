class BookingsController < ApplicationController
    # skip_before_action :verify_authenticity_token
    def index
    bookings = Booking.all
    render json: bookings, include: ["trip","trip.bus","trip.route"], status: :ok
    end

end
