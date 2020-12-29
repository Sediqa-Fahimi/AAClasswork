class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users 
    end

    def create
        user = User.new(user_params)

        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity 

            # redirect_to "/users/#{user.id}"
        end
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end
    def update
        user = User.find(params[:id])
        if user.update(user_params)
            redirect_to "/users/#{user.id}"
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end
end