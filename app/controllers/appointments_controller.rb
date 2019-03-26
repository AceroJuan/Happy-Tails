class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end
    def show
        @appointment = Appointment.find(params[:id])
    end
    def new
        @appointment = Appointment.new
    end
    def create
        appointment = Appointment.create(appointment_params)
        redirect_to "/appointments"
    end
    def edit
        @appointment = Appointment.find(params[:id])
    end
    def update
        Appointment.find(params[:id]).update(appointment_params) 
        redirect_to "/appointments"
    end
    def destroy
        appointment = Appointment.find(params[:id])
        appointment.delete
        redirect_to "/appointments"
    end
    private
        
        def appointment_params
            params.require(:appointment).permit(:user_id, :vet_id, :service_id, :appointment_time, :pet_id)
        end 
end