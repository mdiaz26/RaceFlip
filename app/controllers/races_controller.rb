class RacesController < ApplicationController
    before_action :authorized
    before_action :identify_user

    def new
        @race = Race.new
        @usercars = @user.user_cars
        @cars = Car.all
    end

    def create
        race = Race.create(race_params)
        redirect_to race_path
    end

    def race_params
        params.require(:race).permit(:winner_id, :loser_id)
    end

end