class PassengersController < ApplicationController
# rescue_from ActiveRecord::RecordNotFound, with: :not_found
# rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
# def create
# user = User.create(passenger_params)
# render json: user, status: :created
# end

# def show
# user = User.find_user
# render json: user, status: :ok
# end

# def delete
# user = User.find_user
# user.destroy
# head :no_content
# end

# def update
# user = User.find_user
# user.update(passenger_params)
# render json: user, status: :ok
# end

# private

# def passenger_params
# params.permit(:username, :password,:email,:p_number,:password,:confirm_password)
# end
# def find_user
# user = User.find(params[:id])
# end

# def not_found
# render json: {error: "Passenger not found"}, status: :not_found
# end
# def invalid_record invalid
# render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
# end

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
end
