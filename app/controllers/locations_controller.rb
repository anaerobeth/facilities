class LocationsController < ApplicationController

  def new
    @location = Location.new
  end

  def index
    @locations = Location.all
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      flash[:notice] = "You added a location"
      redirect_to locations_path(@location)
    else
      render :new
    end
  end

  protected
  def location_params
    params.require(:location).permit(
      :category, :label, :landlord_id, :address, :longitude, :latitude)
  end
end
