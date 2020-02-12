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
        @car = Car.find(flash[:car_id])
        if @car.cost > @user.balance
            flash[:errors] = "You don't have enough money"
            redirect_to buy_path
        else
            @usercar = UserCar.create(user_id: session[:user_id], car_id: flash[:car_id])
            @user.balance -= @usercar.car.cost
            @user.save
            redirect_to dealer_path
        end
    end

    def show
        @ucs = @user.user_cars
        @uc = UserCar.find(params[:id])
        @i = @ucs.index(@uc) + 1  
        @next = @ucs[@i]

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

    def repair
        @usercar = UserCar.find(user_car_params[:user_car_id])
        @usercar.condition = 100
        @usercar.save
    end

end