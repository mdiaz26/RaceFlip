class UsersController < ApplicationController
    layout "application"

    def index
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        byebug
        if @user.valid?
            redirect_to garage_path
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def garage
        #hardcoding this for now. We'll likely use a 'before' method to preset @user based on login.
        @user = User.first
    end

    def leaderboard
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end

end