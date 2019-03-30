class PetsController < ApplicationController
    def index
        @pets = current_user.pets
    end
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
        redirect_to user_pet_path(current_user, pet.id)
    end
    def edit
        @pet = Pet.find(params[:id])
    end
    def update
        pet = Pet.find(params[:id])
        pet.update(pet_params)
        redirect_to user_pet_path(current_user, pet.id)
    end
    def destroy
        pet = Pet.find(params[:id])
        pet.delete
        redirect_to user_pets_path(current_user)
    end

    private

    def pet_params
        params.require(:pet).permit(:user_id, :pet_name, :pet_age, :pet_breed, :pet_bio, :pet_picture)
    end
end