class Car < ApplicationRecord
    has_many :user_cars
    has_many :users, through: :user_cars 

    def car_info
        self.make.to_s + " " + self.model.to_s + " Top Speed: #{self.top_speed}"
    end
end
