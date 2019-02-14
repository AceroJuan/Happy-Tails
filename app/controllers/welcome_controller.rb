class WelcomeController < ApplicationController
    def index  
        @pet = Pet.all.where(user_id: current_user)
    end
end