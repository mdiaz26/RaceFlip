class User < ApplicationRecord
        has_secure_password
        has_many :user_cars
        has_many :cars, through: :user_cars 

        # def password=(new_password)
        #         self.password_digest
        # end

        # def authenticate(password)

        # end
end
