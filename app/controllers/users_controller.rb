class UsersController < ApplicationController
skip_before_action :authorized, only: [:create, :show]
    def create
        user = User.create!(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show 
        current_user = User.find_by(id:session[:user_id])
        if current_user
            render json: current_user, status: :ok
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    private
    def user_params
        params.permit(:full_name, :user_name, :password, :email)
    end
end
