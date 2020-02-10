class UserCar < ApplicationRecord
    belongs_to :user
    belongs_to :car
    has_many :races, :foreign_key => "winner_id"
    has_many :races, :foreign_key => "loser_id"
end
