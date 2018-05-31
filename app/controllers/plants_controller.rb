class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :create]

  def index
    @plants = Plant.all
    json_response(@plants)
  end

  def create
    @plant = Plant.create!(plant_params)
    json_response(@plant, :created)
  end

  def show
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
