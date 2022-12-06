class PassengersController < ApplicationController
    before_action :authorize
    skip_before_action :authorize, only: [:create]


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
    params.permit(:username, :password, :email, :p_number, :password, :confirm_password)
end
def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :passenger_id
  end
end
