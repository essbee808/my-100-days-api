class SessionsController < ApplicationController
    
    def new
    end

    def create
        if current_user
            redirect_to '/'
        else
            user = User.find_by(username: params[:username])
            if user && user.password == params[:password]
                session[:current_user_id] = user.id
                render json: user, status: 200
            else 
                redirect_to '/login'
            end
        end 
    end

    def destroy
        session.clear
        current_user = nil
        redirect_to '/'
    end
end
