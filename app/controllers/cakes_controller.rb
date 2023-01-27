class CakesController < ApplicationController
    def index
        @cake_result = params[:cake_result]
    end

    def calculate_cake 
        begin
            # Transform recipe and ingredients to correct format for the helper function
            recipe = {}
            ingredients = {}
            params[:recipe].values.each { |r| recipe["#{r[:key]}"] = r[:value].to_i }
            params[:ingredients].values.each { |i| ingredients["#{i[:key]}"] = i[:value].to_i }
            
            @result = ApplicationController.helpers.cakes(recipe , ingredients)
            
            redirect_to root_path(cake_result: @result, params: request.parameters)
        rescue => error
            redirect_back(fallback_location: root_path, notice: error)
        end 
    end
end