class ReviewsController < ApplicationController
  
    def create
    review = Review.create(review_params)
    render json: review, status: :created
    end
    def index
    reviews = Review.find_by(booking_id: params[:booking_id])
    render json: reviews, status: :ok
    end
    private 

    def review_params
      params.permit(:booking_id,:comment,:rating)
    end

end
