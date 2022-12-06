class TripsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        trips = Trip.all
        render json: trips
    end

    def show
        trip = Trip.find_by(id: params[:id])
        render json: trip
    end

    def create
        trip = Trip.create!(trip_params)
        render json: trip, status: :created
    end

    private

    def find
        Trip.find(params[:id])
    end

    def trip_params
        params.permit(:bus_id, :route_id, :departure)
    end

    def render_not_found_response
        render json: { error: "Trip not found" }, status: :not_found
    end

    def render_unprocessable_entity_response (invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
