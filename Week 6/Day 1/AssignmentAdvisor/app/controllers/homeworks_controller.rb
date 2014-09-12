class HomeworksController < ApplicationController
  # before_action :find_assignment, except: :new
  before_action :find_homework, only: [:show, :edit, :update, :destroy]
  before_action :find_assignment
  def index
    @homeworks = Homework.all
  end

  def new
    @cohort = @assignment.cohort
    @homework = Homework.new
  end

  def create
    @cohort = @assignment.cohort
    @homework = Homework.create homework_params
    if @homework.save == true
      redirect_to cohort_assignment_path(@cohort, @assignment)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @homework.update_attributes homework_params
    redirect_to homework_path(@homework)
  end

  def destroy
    @homework.delete
    redirect_to homeworks_path
  end
private
  def homework_params
    params.require(:homework).permit(:assignment_id, :user_id, :title, :notes, links_attributes: [:id, :path, :homework_id, :_destroy])
  end
  def find_homework
    @homework = Homework.find params[:id]
  end
  def find_assignment
    @assignment = Assignment.find params[:assignment_id]
  end
end
