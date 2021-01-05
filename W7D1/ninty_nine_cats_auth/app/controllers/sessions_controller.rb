class SessionsController < ApplicationController
    def new
        @user = User.new
        render :sign_in
    end

    def create
        @user = User.find_by_credentials(params[:user][:user_name],params[:user][:password])
        if @user 
            login(@user)
            redirect_to cats_url
        else
            render :sign_in
        end
    end

    def destroy
        logout
        redirect_to new_session_url
    end
end
