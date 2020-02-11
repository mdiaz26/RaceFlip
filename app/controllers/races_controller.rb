class RacesController < ApplicationController
    before_action :authorized
    before_action :identify_user

    def new
        @race = Race.new
        @usercars = @user.user_cars
        @cars = UserCar.all.reject {|car| @usercars.include? car}
    end

    def create
        race = Race.create(race_params)
        # byebug
        determine_results(race)
        if race.winner.user == @user
            @user.balance += 500
            @user.save
        else
            @user.balance -= 500
            @user.save
        end
        redirect_to race_path
    end

    def determine_results(race)
        # byebug
        car1 = race.winner
        car2 = race.loser
        if car1.car.top_speed < car2.car.top_speed
            race.winner = car2
            race.loser = car1
            race.save
        end
    end

    private

    def race_params
        params.require(:race).permit(:winner_id, :loser_id)
    end

end