class CyclistsController < ApplicationController

    def index
        cyclists = Cyclist.all
        render json: cyclists
    end

    def show
        cyclist = Cyclist.find(params[:id])
        render json: cyclist
    end

end