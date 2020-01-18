class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, include: :jobs 
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: :jobs
    end

    def create
        @user = User.create(user_params)
        render json: @user, status: :created
    end

    def update
        @user = User.find(params[:id])
        @user = user.update(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
