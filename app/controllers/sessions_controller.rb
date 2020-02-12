class SessionsController < ApplicationController
    

    def new
    end

    def create
        @user = User.find_by(name: login_params[:name])
        if @user && @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            redirect_to garage_path
        else
            flash[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def logout
        
    end

    def destroy
        session[:user_id] = nil
        redirect_to "/"
    end

    def login_params
        params.permit(:name, :password)
    end

end