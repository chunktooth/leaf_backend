class PlantController < ApplicationController
  before_action :set_plant, only: [:show]

  def index
    @plants = Plant.all
    json_response(@plants)
  end

  def show
    @user = Plant.find(params[:id])
    json_response(@plant)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :sci_name, :img)
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
