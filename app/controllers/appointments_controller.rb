class AppointmentsController < ApplicationController
  def index 
    @appointments = Appointment.all
  end 
  def new 
    @patient = Patient.first
   
    @appointment = Appointment.new
  end
  def create
  
    @appointment = Appointment.new(date_params)
    if @appointment.save
      byebug
      redirect_to @appointment
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @appointment = Appointment.find(params[:id]) 
  end 
 
  private
  def date_params
  params.require(:appointment).permit(:date)
end
end