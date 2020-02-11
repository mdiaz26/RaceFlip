class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to garage_path
        else
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
    end

end