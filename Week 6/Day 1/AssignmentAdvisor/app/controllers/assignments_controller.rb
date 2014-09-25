class AssignmentsController < ApplicationController
  before_action :find_cohort
  before_action :find_assignment, only: [:show, :edit, :update, :destroy]

  def show
    @homeworks = Homework.where(:assignment_id => @assignment.id).all
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
      @cohort.enrollments.each do |enrollment|
        UserMailer.new_assignment_email(enrollment.user, @cohort).deliver
      end
      # UserMailer.new_assignment_email(@assignment.cohort).deliver
      redirect_to cohort_path(@assignment.cohort_id)
    else
      render :new
    end
  end

  def edit
  end

  def update    
    @assignment.update_attributes assignment_params
    redirect_to cohort_assignment_path(@assignment.cohort_id, @assignment)
  end

  def destroy
    @assignment.delete
    redirect_to cohort_path(@assignment.cohort_id)
  end

private

  def assignment_params
    params.require(:assignment).permit(:name, :description, :cohort_id, :due_date)
  end
  def find_cohort
    @cohort = Cohort.find params[:cohort_id]
  end
  def find_assignment
    @assignment = Assignment.find params[:id]
  end
end
