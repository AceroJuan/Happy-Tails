class VetsController < ApplicationController
    def show
        @vet = Vet.find(params[:id])   
    end
    def new
        @vet = Vet.new
    end
    def create
        vet =  Vet.create(vet_params)
        redirect_to "/vets/#{vet.id}"
    end
    def edit
        @vet = Vet.find(params[:id])
    end
    def update
        Vet.find(params[:id]).update(vet_params) 
        redirect_to "/vets/#{params[:id]}"
    end
    def destroy
        vet = Vet.find(params[:id])
        vet.delete
        redirect_to "/vets/#{vet.id}"
    end

    private

    def vet_params
        params.require(:vet).permit(:vet_name, :vet_email, :vet_phone)
    end

end