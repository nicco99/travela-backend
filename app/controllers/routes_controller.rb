class RoutesController < ApplicationController

    # GET /routes
    def index
        routes = Route.all
        render json: routes
    end

    # GET /routes/:id
    def show
        route = find
        render json: route, serializer: SpecificRouteSerializer
    end

    # PATCH /routes/:id
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
