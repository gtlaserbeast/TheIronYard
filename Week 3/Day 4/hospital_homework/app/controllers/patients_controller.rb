class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy, :to_billing, :to_waiting, :to_xray, :leave, :see_doctor, :to_surgery]
  before_action :find_hospital
  def new
    @patient = Patient.new
  end
  def create
    @patient = @hospital.patients.new(patient_params)
    if @patient.save == true
      redirect_to hospital_path(@hospital)
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @patient.update_attributes patient_params
      redirect_to hospital_path(@hospital)
    else 
      render :edit
    end  
  end
  def show
  end
  def destroy
    @patient.delete
    redirect_to hospital_path(@hospital)
  end
  def to_billing
    @patient.to_billing!
    redirect_to hospital_path(@hospital)
  end
  def to_waiting
    @patient.to_waiting!
    redirect_to hospital_path(@hospital)
  end
  def see_doctor
    @patient.see_doctor!
    redirect_to hospital_path(@hospital)
  end
  def to_xray
    @patient.to_xray!
    redirect_to hospital_path(@hospital)
  end
  def to_surgery
    @patient.to_surgery!
    redirect_to hospital_path(@hospital)
  end
  def leave
    @patient.leave!
    redirect_to hospital_path(@hospital)
  end
  # def transition
  #   event = params[:event]+'!'
  #   @patient.send(event.to_sym)
  #   redirect_to hospital_path(@hospital)
  # end
private
  def find_patient
    @patient = Patient.find params[:id]
  end
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end
  def patient_params
    params.require(:patient).permit(:name, :gender, :birth, :diagnosis)
  end
end
