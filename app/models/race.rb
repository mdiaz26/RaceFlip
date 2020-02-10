class Race < ApplicationRecord
    belongs_to :winner, :class_name => "UserCar" 
