class HospitalsController < ApplicationController
  before_action :find_hospital, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :show, :create_doctor, :delete_doctor]
  def index
    @hospitals = Hospital.all
  end
  def new
    @hospital = Hospital.new
  end
  def create
    @hospital = Hospital.create hospital_params
    # if @hospital.save == true
    #   redirect_to hospital_path(@hospital)
    # else
    #   render :new
    # end
    respond_to do |format|
      if @hospital.save
        flash[:notice] = "Hospital was successfully created"
        format.html { redirect_to hospitals_path() }
      else
        flash[:error] = "Hospital was not successfully created"
        format.html { render :new }
      end
    end
  end
  def edit

  end
  def update
    respond_to do |format|
      if @hospital.update(hospital_params)
        format.html { redirect_to hospitals_path(), notice: 'Hospital was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
    # if @hospital.update_attributes hospital_params
    #   redirect_to hospital_path(@hospital)
    # else 
    #   render :edit
    # end  
  end
  def show
    @hospital = Hospital.find params[:id]
    @doctor = @hospital.doctors.new
  end
  def destroy
    @hospital.delete
    respond_to do |format|
      format.html { redirect_to hospitals_path(), notice: 'Hospital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def create_doctor
    @hospital = Hospital.find params[:id]
    @hospital.doctors.create doctor_params
    redirect_to @hospital
  end

  def delete_doctor
    @hospital = Hospital.find params[:id]
    @doctor = Doctor.find params[:doctor_id]
    @doctor.delete
    redirect_to @hospital
  end
  private
    def find_hospital
      @hospital = Hospital.find params[:id]
    end
    def hospital_params
      params.require(:hospital).permit(:name, :description, :capacity)
    end
    def doctor_params
      params.require(:doctor).permit(:name, :speciality)
    end
end
