class UserCar < ApplicationRecord
    belongs_to :user
    belongs_to :car
    has_many :races, :foreign_key => "winner_id"
    has_many :races, :foreign_key => "loser_id"

    def value
    # this will become a more complex formula that factors in condition etc
        self.car.cost
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

end
