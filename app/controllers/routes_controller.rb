class RoutesController < ApplicationController

    def index
        routes = Route.all
        render json: routes
    end

    def show
        route = find
        render json: route
    end

    def update
        route = find
        route.update(route_params)
        render json: route, status: :accepted
    end

    private

    def find
        Route.find(params[:id])
    end

    def route_params
        params.permit(:price)
    end

end
