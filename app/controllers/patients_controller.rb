class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end
  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end 

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      session[:patient_id]=@patient.id
      redirect_to doctors_path, notice: "success fully created account"

    else
      render :new, status: :unprocessable_entity
    end
  end
    def edit
        @patient = Patient.find(params[:id])
    end

def update  
  @patient = Patient.find(params[:id])
  
  if @patient.update(patient_params)
    redirect_to @patient
  else
    render :edit

  end
  end 
  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to @patient, status: :see_other
  end
  
  private
    def patient_params
    params.require(:patient).permit(:name, :disease, :age, :gender, :password , :password_confirmation)
  end

end