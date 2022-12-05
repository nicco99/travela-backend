class BookingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


    def index
        if params[:passenger_id] 
            passenger = Passenger.find(params[:passenger_id])
            bookings = passenger.bookings
        else 
            bookings Booking.all
        end

        render json: bookings 
    end

    def  create

    end

    def show 
        booking = Booking.find(params[:id])
        render json: booking
    end

    private

    def render_not_found_response
      render json: { error: "Booking not found" }, status: :not_found
    end
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
    def item_params 
      params.permit(:name, :description, :price)
    end
end
