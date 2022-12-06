class BookingsController < ApplicationController
    def index
    bookings = Booking.all
    render json: bookings, include: ["trip","trip.bus","trip.route"], status: :ok
    end
end
