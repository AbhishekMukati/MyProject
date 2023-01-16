class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end
  def show
    @appointment = Appointment.find(params[:id])
  end
  def new
    current_patient
    @appointment = @current_patient.appointments.new
    @doctor=Doctor.find(params[:doctor_id])
  end
  def create
    byebug
    current_patient 
    @appointment = @current_patient.appointments.new(appointment_params)
    @appointment.doctor_id = @doctor.id
    if @appointment.save
      redirect_to @appointment
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def appointment_params
    params.require(:appointment).permit(:date)
end
end