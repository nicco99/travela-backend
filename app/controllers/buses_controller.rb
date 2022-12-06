class BusesController < ApplicationController
    def show
        bus = Bus.find(params[:id])
        render json: bus, status: :created
    end
end
