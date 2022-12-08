class PassengersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

# def create 
#     passenger = Passenger.create(passenger_params)
#     if passenger.valid?
#       token = encode_token(passenger_id: passenger.id)
#       render json: { passenger: PassengerSerializer.new(passenger), jwt: token }, status: :created
#     else 
#         render json: {errors: passenger.errors.full_messages}, status: :unprocessable_entity
#     end 
# end 

def create
  passenger = Passenger.create(passenger_params)
  render json: passenger, status: :created
end
def update 
  passenger = Passenger.find(params[:id]) 
  passenger.update!(passenger_update_params)
  render json: passenger, status: :created 
end

def show
user = Passenger.find(params[:id])
  render json: user
end

def index
  user = Passenger.find_by(current_user)
  if user 
    render json: user
  else
    render json: {error: "Not authorized"}, status: :unauthorized
  end
end
def destroy
  passenger = Passenger.find(params[:id])
  passenger.destroy!
  head :no_content
end


private 
def passenger_params
    params.permit(:username, :password, :email, :p_number, :password_confirmation)
end
def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :passenger_id
end
def passenger_update_params 
  params.permit(:username, :p_number, :email) 
end
def render_not_found_response
  render json: { error: "Power Not found" }, status: :unprocessable_entity
end

end
