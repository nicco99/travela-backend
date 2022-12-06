require_relative "./mpesa/mpesa_express"
require_relative "./mpesa/mpesa_express"
require_relative "./mpesa/auth"
class TransactionsController < ApplicationController

    def create
        phone=params[:phone]
        amount=params[:amount]
        data=mpesa_express(amount,phone)
        render json: data
    end

end
