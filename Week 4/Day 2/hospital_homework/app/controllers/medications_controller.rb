class MedicationsController < ApplicationController
  before_action :find_patient
  before_action :find_hospital
  before_action :find_medication, only: [:show, :edit, :update, :destroy]
  def new
    @medication = Medication.new
  end
  def create
    @medication = @patient.medications.new(medication_params)
    if @medication.save == true
      redirect_to hospital_patient_path(@hospital, @patient)
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @medication.update_attributes medication_params
      redirect_to hospital_patient_path(@hospital, @patient)
    else 
      render :edit
    end  
  end
  def show
    
  end
  def destroy
    @medication.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end
private
  def find_patient
    @patient = Patient.find params[:patient_id]
  end
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end
  def find_medication
    @medication = Medication.find params[:id]
  end
  def medication_params
    params.require(:medication).permit(:name, :description)
  end
end
