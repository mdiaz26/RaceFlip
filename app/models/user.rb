class User < ApplicationRecord
        has_secure_password
        has_many :user_cars
        has_many :cars, through: :user_cars 

        def score
                owned_cars = self.user_cars.select{|usercar| usercar.owned}
                owned_cars.reduce(0) {|n, car| car.top_speed + n }
        end

        def arrange_cars
                self.user_cars.sort_by{|car| car.top_speed}
        end

        def top_car
                arrange_cars.last
        end

        def winning_races
                Race.all.select {|race| race.winner.user == self}
        end

        def wins
                winning_races.count
        end

        def self.arrange_by_score
                self.all.sort_by{|user| user.score}.reverse
        end

        def rank
                @users = User.arrange_by_score
                @users.index(self) + 1
        end

        def ucars_array
                self.user_cars.cycle
        end
end
