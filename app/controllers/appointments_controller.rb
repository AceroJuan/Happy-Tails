class AppointmentsController < ApplicationController
    def index
        @appointment = Appointment.all
    end
    def show
    end
    def new
        @appointment = Appointment.new
    end
    def create
        appointment = Appointment.create(appointment_params)
        redirect_to "/appointments"
    end

    private
        
        def appointment_params
            params.require(:appointment).permit(:user_id, :vet_id, :service_id, :appointment_time, :pet_id)
        end 
end