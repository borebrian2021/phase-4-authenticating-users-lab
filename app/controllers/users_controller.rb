class UsersController < ApplicationController

    #POST CHECK USERS
    def show
        user= User.find(session[:user_id])
        if user
        render json: user, status: :ok
        else
            render json: "Unauthorized user", status: :unauthorized
        end
    end

    def create
        user= User.new(params[:user])
        render json: user
    end
end
