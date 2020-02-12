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
        pot = race_value(race.winner, race.loser).to_i
        determine_results(race)
        if race.winner.user == @user
            flash[:message] = "You won $#{pot}"
            @user.balance += pot
            @user.save
        else
            flash[:message] = "You lost $#{pot}"
            @user.balance -= pot
            @user.save
        end
        race.deteriorate
        redirect_to race_path
    end

    def determine_results(race)
        #This method accepts the argument of a race instance and returns the pot
        # The pot can be a positive or negative number
        car1 = race.winner
        car2 = race.loser
        # byebug
        if car1.car_score < car2.car_score
            race.winner = car2
            race.loser = car1
            race.save
        end
    end

    def race_value(car1, car2)
        1000 * (car1.top_speed.to_f / car2.top_speed.to_f)
    end

    private

    def race_params
        params.require(:race).permit(:winner_id, :loser_id)
    end

end