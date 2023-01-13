class DoctorsController < ApplicationController
  def index 
    @doctors = Doctor.all
    
   end 
   def show
    
      @doctor = Doctor.find(params[:id])
    
    end 
   def new
      @doctor = Doctor.new
       end
   def create
      @doctor = Doctor.new(doctors_params)
      if @doctor.save
        redirect_to @doctor
      else
        render :new, status: :unprocessable_entity
      end
    end

    private
      def doctors_params
      params.require(:doctor).permit(:name, :specialization, :password_digest, :password_Confirmation)
    end

end
