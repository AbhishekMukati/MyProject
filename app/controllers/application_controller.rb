class ApplicationController < ActionController::Base 

  def current_patient
 @current_patient ||=Patient.find(session[:patient_id]) if session[:patient_id]
  end
  helper_method :current_patient

  
end
