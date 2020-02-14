class UsersController < ApplicationController
    layout "application"
    before_action :authorized, only: [:garage]
    before_action :has_cars?, only: [:garage]
    before_action :identify_user, only: [:garage, :leaderboard]

    def index
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to buy_path
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def garage
        redirect_to uc_path(@user.user_cars.first)
    end

    def leaderboard
        @users = User.arrange_by_score
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end

end