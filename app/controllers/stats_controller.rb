class StatsController < ApplicationController

    def index
        render json: Stat.all, status: :ok
    end

    def show 
        stats = Stat.find(params[:id])
        render json: stats, status: :ok
    end

    
    
end
