class UsersController < ApplicationController
    before_action :double_sign_in?, only: [:login, :new]
    
    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            redirect_to user_url(@user)
       else
            render :new     
       end
    end

    def show
        @user = User.find_by(id: params[:id])
        p @user
        if @user
            render :show
        else
            render plain "User not found"
        end
    end


    private
    def user_params
        params.require(:user).permit(:user_name,:password)
    end
end
