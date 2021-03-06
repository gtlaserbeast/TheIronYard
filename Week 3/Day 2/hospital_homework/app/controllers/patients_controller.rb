class PatientsController < ApplicationController

  before_action :find_patient, only: [:show, :edit, :update, :destroy]

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

private

  def find_patient
    @patient = Patient.find params[:id]
  end

  def patient_params
    params.require(:patient).permit(:name, :gender, :birth, :diagnosis)
  end

end
