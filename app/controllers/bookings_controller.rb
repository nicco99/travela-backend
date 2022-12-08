class BookingsController < ApplicationController
    # skip_before_action :verify_authenticity_token
    def index
    bookings = Booking.all
    render json: bookings, include: ["trip","trip.bus","trip.route"], status: :ok
    end

    def create 
        trip_id = params[:trip_id].to_i
        passenger_id = params[:passenger_id].to_i
        status = params[:status]
     booking = Booking.create(trip_id: trip_id, passenger_id: passenger_id, status: status)
     render json: booking
    end
private
# def booking_params
# params.permit(:trip_id,:passenger_id,:status)
# end
end
