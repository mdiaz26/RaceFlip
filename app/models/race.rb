class Race < ApplicationRecord
    belongs_to :winner, :class_name => "UserCar" 
    belongs_to :loser, :class_name => "UserCar" 

    def find_user_car(id)
        UserCar.find(id)
    end

    def display_winner
        winner = self.find_user_car(winner_id)
        return "#{winner.user.name}, #{winner.car.make} #{winner.car.model}"
    end
    
    def display_loser
        loser = find_user_car(loser_id)
        return "#{loser.user.name}, #{loser.car.make} #{loser.car.model}"
    end

    def deteriorate
        self.winner.condition *= 0.85
        self.winner.save
        self.loser.condition *= 0.85
        self.loser.save
    end

    def determine_results
        results = Hash.new
        results[:car1_name] = self.winner
        results[:car2_name] = self.loser
        results[:car1] = self.winner.car_score
        results[:car2] = self.loser.car_score
        results[:difference] = (results[:car1] - results[:car2]).to_i.abs
        return results
    end

    def post_results
        #This method accepts the argument of a race instance and determines the winners
        hash = self.determine_results
        if hash[:car1] < hash[:car2]
            self.winner = hash[:car2_name]
            self.loser = hash[:car1_name]
            self.save
        end
        return hash
    end

end
