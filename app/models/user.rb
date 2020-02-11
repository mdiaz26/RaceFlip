class User < ApplicationRecord
        has_secure_password
        has_many :user_cars
        has_many :cars, through: :user_cars 

        def score
                self.user_cars.reduce(0) {|n, car| car.top_speed + n }
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
end
