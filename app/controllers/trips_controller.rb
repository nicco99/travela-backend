class TripsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        trips = Trip.all
        render json: trips
    end

    def show
        trip = find
        render json: trip
    end

    private

    def find
        Trip.find(params[:id])
    end

    # def trip_params
    #     params.permit(:bus_id, :route_id, :departure)
    # end

    def render_not_found_response
        render json: { error: "Trip not found" }, status: :not_found
    end

end
