class RestaurantPizzasController < ApplicationController
    wrap_parameters format: []
    
    # POST /restaurantpizzas
    def create
        restaurant_pizza = RestaurantPizza.create!(price: params[:price], restaurant_id: params[:restaurant_id], pizza_id: params[:pizza_id])
        render json: restaurant_pizza.pizza, status: :created
        
    rescue ActiveRecord::RecordInvalid => invalid
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
