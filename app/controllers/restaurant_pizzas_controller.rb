class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        restaurant_pizza = RestaurantPizza.create!(price: params[:price], user_id: params[:user_id], pizza_id: params[:pizza_id])
        render json: restaurant_pizza, status: :created
    end
    
    private 

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
