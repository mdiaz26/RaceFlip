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
        @d = @ucs.index(@uc) - 1
        #####cycle reset     
        if @i == @ucs.size 
        @i = 0
        end 
        @next = @ucs[@i]
        @previous = @ucs[@d]
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

    def repair
        @usercar = UserCar.find(repair_params[:id])
        if @usercar.condition == 100
            flash[:repair_message] = "No need to repair"
        else
            @cost = @usercar.calculate_repair_cost
            @usercar.repair
            @usercar.save
            @usercar.user.save
            flash[:repair_message] = "You have been charged #{@cost}"
            flash[:repair_cue] = true
        end
        redirect_to uc_path(@usercar)
    end

    def user_car_params
        params.require(:usercar).permit(:user_car_id)
    end

    def repair_params
        params.permit(:id)
    end

end