class RoutesController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

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
        route.update!(route_params)
        render json: route, status: :accepted
    end

    # POST /routes
    def create
        route = Route.create!(route_params)
        render json: route, status: :created
    end

    # DELETE /routes/:id
    def destroy
        route = find
        route.destroy
        head :no_content
    end

    private

    def find
        Route.find(params[:id])
    end

    def route_params
        params.permit(:price, :start, :destination)
    end

    def render_not_found_response
        render json: { error: "Route not found" }, status: :not_found
    end

    def render_unprocessable_entity_response (invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
