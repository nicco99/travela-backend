class SessionsController < ApplicationController
    require 'byebug'

    def index 
        byebug
        passenger = Passenger.all 
        render json: passenger
        end

    def create
        passenger = Passenger.find_by(email: params[:email])
        if passenger &.authenticate(params[:password])
            session[:passenger_id] = passenger.id
            render json: passenger, Serializer: SessionSerializer
        else
            render json: { errors: "Invalid email or password" }, status: :unauthorized
        end
    end
end
