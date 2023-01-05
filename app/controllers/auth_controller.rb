class AuthController < ApplicationController
    skip_before_action :authorized, only:[:create]

    def create
        passenger = Passenger.find_by(email: params[:email])
        if passenger &.authenticate(params[:password])
            token = encode_token(passenger_id: passenger.id)
            render json: { passenger: PassengerSerializer.new(passenger), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid email or password" }, status: :unauthorized
        end
    end
end
