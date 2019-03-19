class ServicesController < ApplicationController
    def index
        @services = Service.all
    end
    def show
        @service = Service.find(params[:id])
    end
    def new
        @service = Service.new
    end
    def create
        service = Service.create(service_params)
        redirect_to "/services/#{service.id}"
    end
    def edit
        @service = Service.find(params[:id])
    end
    def update
        Service.find(params[:id]).update(service_params) 
        redirect_to "/services"
    end
    def destroy
        service = Service.find(params[:id])
        service.delete
        redirect_to "/services"
    end

    private
        def service_params
            params.require(:service).permit(:service_name, :service_cost, :vet_id)
        end
end