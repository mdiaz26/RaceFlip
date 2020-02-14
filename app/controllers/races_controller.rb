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
        results = race.post_results
        # byebug
        if race.winner.user == @user
            flash[:messages] = ["You won by #{results[:difference]} mph", "You won $#{pot}"]
            @user.balance += pot
            @user.save
            flash[:last_result] = "w"
        else
            flash[:messages] = ["You lost by #{results[:difference]} mph", "You lost $#{pot}"]
            @user.balance -= pot
            @user.save
            flash[:last_result] = "l"
        end
        race.deteriorate
        redirect_to race_path
    end

    def determine_results(race)
        results = Hash.new
        results[:car1] = race.winner.car_score
        results[:car2] = race.loser.car_score
        results[:difference] = (results[:car1] - results[:car2]).abs
        return results
    end

    def post_results(race)
        #This method accepts the argument of a race instance and determines the winners
        hash = determine_results(race)
        if hash[:car1] < hash[:car2]
            race.winner = car2
            race.loser = car1
            race.save
        end
    end

    def race_value(car1, car2)
        100000 - (car1.top_speed - car2.top_speed) * 100
    end

    private

    def race_params
        params.require(:race).permit(:winner_id, :loser_id)
    end

end