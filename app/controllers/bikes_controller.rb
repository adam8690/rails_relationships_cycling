class BikesController < ApplicationController

    def index
        bike = Bike.where({cyclist: params[:cyclist_id]})
        render json: bike
    end

end