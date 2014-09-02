class AssignmentsController < ApplicationController
<<<<<<< HEAD
  before_action :find_assignment, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @assignments = Assignment.all
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.create assignment_params
    if @assignment.save == true
      UserMailer.new_assignment_email(@assignment.cohort).deliver
      redirect_to assignments_path
    else
      render :new
    end
  end

  def edit
  end

  def update    
    @assignment.update_attributes assignment_params
    redirect_to assignment_path(@assignment)
  end

  def destroy
    @assignment.delete
    redirect_to assignments_path
  end

private

  def assignment_params
    params.require(:assignment).permit(:name, :description, :cohort_id, :due_date)
  end

  def find_assignment
    @assignment = Assignment.find params[:id]
  end
=======
>>>>>>> e504574063bc8cc2cafecde85eb0a7fb40888492
end
