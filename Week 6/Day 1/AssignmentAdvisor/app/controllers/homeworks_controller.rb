class HomeworksController < ApplicationController
  before_action :find_homework, only: [:show, :edit, :update, :destroy]
  def index
    @homeworks = Homework.all
  end

  def new
    @cohorts = Cohort.all
    @users = User.all
    @homework = Homework.new
  end

  def create
    @homework = Homework.create homework_params
    if @homework.save == true
      redirect_to new_homework_path
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
    params.require(:homework).permit(:assignment_id, :user_id, :title, :notes, :links)
  end
  def find_homework
    @homework = Homework.find params[:id]
  end
end
