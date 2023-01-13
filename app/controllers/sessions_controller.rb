class SessionsController < ApplicationController
  def new
  end

 def create


   patient = Patient.find_by(name: patient_params[:name])
   byebug
   if patient && patient.authenticate(patient_params[:password])
    

     session[:patient_id] = patient.id
     flash[:notice]="Login successful"
     redirect_to '/'
   else
     
     flash[:notice]="Invalid Email or Password"
     redirect_to '/login'
   end
 end

 
def destroy
 session[:patient_id] = nil
 flash[:notice]="Logged Out"

  redirect_to '/'
  
end  
private

def patient_params
params.require(:patient).permit(:name, :password)
end

end

