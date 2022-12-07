class PassengersController < ApplicationController
  skip_before_action :authorized, only: [:create]

def create 
    passenger = Passenger.create(passenger_params)
    if passenger.valid?
      token = encode_token(passenger_id: passenger.id)
      render json: { passenger: PassengerSerializer.new(passenger), jwt: token }, status: :created
    else 
        render json: {errors: passenger.errors.full_messages}, status: :unprocessable_entity
    end 
end 

def index
  user = Passenger.find_by(current_user)
  if user 
    render json: user
  else
    render json: {error: "Not authorized"}, status: :unauthorized
  end
end


private 
def passenger_params
    params.permit(:username, :password, :email, :p_number, :password_confirmation)
end
def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :passenger_id
  end


end
