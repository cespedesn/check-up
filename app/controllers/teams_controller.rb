class TeamsController < ApplicationController

    def index
        render json: Team.all, status: :ok
    end

    def show 
        team = Team.find(params[:id])
        render json: team, status: :ok
    end

    
end
