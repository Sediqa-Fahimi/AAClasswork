class UsersController < ApplicationController
    def new
        @user = User.new
        render :new
    end
    def index
        @users = User.all
        render :index
    end
    def create
        @user = User.new(user_params)
    end
    def show
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
