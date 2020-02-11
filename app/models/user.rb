class User < ApplicationRecord
        has_many :user_cars
        has_many :cars, through: :user_cars 
        has_secure_password

        def password=(new_password)
                self.password_digest
        end

        def authenticate(password)
                
        end
end
