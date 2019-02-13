class PetsController < ApplicationController
    def show
        @user = User.find(params[:user_id])
        @pet = Pet.find(params[:id])
    end
    def new
        @pet = Pet.new
    end
    def create
        pet = Pet.new(pet_params)
        pet.user_id = params[:user_id]
        pet.save
        redirect_to user_path(current_user)
    end
    def edit
        @pet = Pet.find(params[:id])
    end
    def update
        Pet.find(params[:id]).update(pet_params) 
        redirect_to user_path(current_user)
    end
    def destroy
        pet = Pet.find(params[:id])
        pet.delete
        redirect_to user_path(current_user)
    end

    private

    def pet_params
        params.require(:pet).permit(:user_id, :pet_name, :pet_age, :pet_race)
    end
end