class SessionsController < ApplicationController
    skip_before_action :authorized, only: :create
    #Actions like login you dont want to authorize to run. So skip_before_action will work. If user is logging in for the first time, they are not going to be authorized. No point in running auth method.
    def create
        user = User.find_by(user_name:params[:user_name])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { errors: "Invalid password or Username" }, status: :unauthorized
        end
    end

    def password (new_password)
        salt = BCrypt::Engine::generate_salt
        self.password.digest = BCrypt::Engine::hash_secret(new_password, salt)
    end

    def authenticator
        salt = password_digest[0..30]
        return nil unless BCrypt::Engine::hash_secret(password, salt) == self.password_digest 
        self
    end

    def destroy 
        session.delete :user_id
        head :no_content
    end
end
