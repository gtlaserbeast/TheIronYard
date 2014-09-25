class LocationsController < ApplicationController
  before_action :find_location, only: [:show, :edit, :update, :destroy]
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create location_params
    if @location.save == true
      redirect_to locations_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @location.update_attributes location_params
    redirect_to locations_path
  end

  def destroy
    @location.delete
    redirect_to locations_path
  end
private
  def location_params
    params.require(:location).permit(:name, :address)
  end
  def find_location
    @location = Location.find params[:id]
  end
end
