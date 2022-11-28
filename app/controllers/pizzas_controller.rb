class PizzasController < ApplicationController
    wrap_parameters format: []
    
    # GET /pizzas
    def index
        render json: Pizza.all, status: :ok
    end
end
