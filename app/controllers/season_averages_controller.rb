class SeasonAveragesController < ApplicationController

    def index
        render json: SeasonAverage.all, status: :ok
    end

    def show 
        season_average = SeasonAverage.find(params[:id])
        render json: season_average, status: :ok
    end

end
