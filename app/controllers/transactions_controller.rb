require_relative "./mpesa/mpesa_express"
require_relative "./mpesa/mpesa_express"
require_relative "./mpesa/auth"

class TransactionsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def create
  
        phone=params[:phone].to_i
        amount=params[:amount]
        data=mpesa_express(amount,phone)
        render json: data
    end


    private 


end
