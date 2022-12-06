class PassengersController < ApplicationController

def create 
    passenger = Passenger.create(passenger_params)
    if passenger.valid?
        render json: passenger, status: :created
    else 
        render json: {errors: passenger.errors.full_messages}, status: :unprocessable_entity
    end 
end 


private 
def passenger_params
    params.permit(:username, :password, :email, :p_number, :s
    )
end
end
