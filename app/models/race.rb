class Race < ApplicationRecord
    belongs_to :winner, :class_name => "UserCar" 

    def find_user(id)
        UserCar.find(id)
    end

    def display_winner
        winner = self.find_user(winner_id)
        return "#{winner.user.name}, #{winner.car.make} #{winner.car.model}"
    end
    
    def display_loser
        loser = find_user(loser_id)
        return "#{loser.user.name}, #{loser.car.make} #{loser.car.model}"
    end
end
