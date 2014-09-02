class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy, :to_billing, :to_waiting, :to_xray, :leave, :see_doctor, :to_surgery]
  def new
    @patient = Patient.new
  end
  def create
    @patient = Patient.create patient_params
    if @patient.save == true
      redirect_to root_path
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @patient.update_attributes patient_params
      redirect_to root_path
    else 
      render :edit
    end  
  end
  def show
    @patient = Patient.find params[:id]
  end
  def destroy
    @patient.delete
    redirect_to root_path
  end
  def to_billing
    @patient.to_billing!
    redirect_to root_path
  end
  def to_waiting
    @patient.to_waiting!
    redirect_to root_path
  end
  def see_doctor
    @patient.see_doctor!
    redirect_to root_path
  end
  def to_xray
    @patient.to_xray!
    redirect_to root_path
  end
  def to_surgery
    @patient.to_surgery!
    redirect_to root_path
  end
  def leave
    @patient.leave!
    redirect_to root_path
  end
<<<<<<< HEAD
  # def transition
  #   event = params[:event]+'!'
  #   @patient.send(event.to_sym)
  #   redirect_to root_path
  # end
=======
>>>>>>> e504574063bc8cc2cafecde85eb0a7fb40888492
private
  def find_patient
    @patient = Patient.find params[:id]
  end
  def patient_params
    params.require(:patient).permit(:name, :gender, :birth, :diagnosis)
  end
end
