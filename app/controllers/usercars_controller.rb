class UsercarsController < ApplicationController
    before_action :authorized
    before_action :identify_user

    def dealer
    
    end

    def new
        @car = Car.all.sample
        @usercar = UserCar.new
        flash[:car_id] = @car.id
    end

    def create
        @usercar = UserCar.create(user_id: session[:user_id], car_id: flash[:car_id])
        @user.balance -= @usercar.car.cost
        @user.save
        redirect_to dealer_path
    end

    def sell
    end
    
    def destroy
        # byebug
        @usercar = UserCar.find(user_car_params[:user_car_id])
        @user.balance += @usercar.car.cost
        @user.save
        @usercar.destroy
        redirect_to sell_path
    end

    def user_car_params
        params.require(:usercar).permit(:user_car_id)
    end

end