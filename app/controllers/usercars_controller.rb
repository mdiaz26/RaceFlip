class UsercarsController < ApplicationController

    def dealer
    
    end

    def new

    end

    def sell
        #going to need to edit this so that it calls the logged-in user
        @user = User.first
    end

    def destroy
        
    end

end