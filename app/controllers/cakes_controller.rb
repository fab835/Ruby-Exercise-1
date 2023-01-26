class CakesController < ApplicationController
    def index
        @cake_result = params[:cake_result]
    end

    def calculate_cake 
        begin
            @result = ApplicationController.helpers.cakes(eval(params[:receiepe]) , eval(params[:ingredients]))

            redirect_to root_path(cake_result: @result, receiepe: params[:receiepe], ingredients: params[:ingredients])
        rescue
            redirect_to root_path(notice: "error")
        end 
    end
end