class EnrollmentsController < ApplicationController
<<<<<<< HEAD
  before_action :find_enrollment, only: [:show, :edit, :update, :destroy]
  def index
    @enrollments = Enrollment.all
  end

  def new
    @cohorts = Cohort.all
    @users = User.all
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.create enrollment_params
    if @enrollment.save == true
      redirect_to new_enrollment_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @enrollment.update_attributes enrollment_params
    redirect_to enrollment_path(@enrollment)
  end

  def destroy
    @enrollment.delete
    redirect_to enrollments_path
  end
private
  def enrollment_params
    params.require(:enrollment).permit(:cohort_id, :user_id)
  end
  def find_enrollment
    @enrollment = Enrollment.find params[:id]
  end
=======
>>>>>>> e504574063bc8cc2cafecde85eb0a7fb40888492
end
