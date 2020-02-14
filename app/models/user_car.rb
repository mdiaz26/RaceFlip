class UserCar < ApplicationRecord
    belongs_to :user
    belongs_to :car
    has_many :races, :foreign_key => "winner_id"
    has_many :races, :foreign_key => "loser_id"

    def value
    # This factors in condition as well as simple depreciation
        (self.car.cost - self.calculate_repair_cost) * 0.8
    end

    def model
        self.car.model
    end

    def make
        self.car.make
    end

    def user_car_info
        self.make.to_s + " " + self.model.to_s + " Top Speed: #{self.car.top_speed}"
    end

    def top_speed
        self.car.top_speed
    end

    def car_score
        #This generates a random number that will add chance to races
        (self.top_speed + self.condition) * (rand(90..100)/100.0)
    end

    def repair
        self.user.balance -= self.calculate_repair_cost
        self.condition = 100
    end

    def calculate_repair_cost
        (self.car.cost * (100- self.condition).to_f/1000).to_i
    end

end
