class ApplicationController < ActionController::Base
    before_action :logged_in?

    def welcome
    end

    def logged_in?
        session[:user_id]
    end

    def authorized
        redirect_to "/" unless logged_in?
    end

    def identify_user
        @user = User.find(session[:user_id])
    end

    def has_cars?
        @user = User.find(session[:user_id])
        @user.cars.length > 0
    end

end
