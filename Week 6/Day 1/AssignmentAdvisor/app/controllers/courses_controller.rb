class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    if @course.save == true
      redirect_to courses_path
    else
      render :new
    end
  end

  def edit
  end

  def update    
    @course.update_attributes course_params
    redirect_to course_path(@course)
  end

  def destroy
    @course.delete
    redirect_to courses_path
  end

private

  def course_params
    params.require(:course).permit(:title, :description)
  end

  def find_course
    @course = Course.find params[:id]
  end
end
