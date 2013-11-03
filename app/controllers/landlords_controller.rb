class LandlordsController < ApplicationController
  def new
    @landlord = Landlord.new
  end

  def create
    @landlord = Landlord.new(landlord_params)
    if @landlord.save
      flash[:notice] = "You added a landlord"
      redirect_to landlords_path(@landlord)
    else
      render :new
    end
  end

  def index
    @landlords = Landlord.all
  end

  protected
  def landlord_params
    params.require(:landlord).permit(
      :first_name, :last_name, :company_name)
  end

end
