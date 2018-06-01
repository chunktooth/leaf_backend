class PlantsController < ApplicationController
  before_action :set_plant, only: [:show]

  def index
    @plants = Plant.all
    json_response(@plants)
  end

  def create
    user = User.find(params[:user_id])
    plant = Plant.new(plant_params)
    plant.user_id = user.id
    if plant.save
      json_response(plant, :created)
    else
      json_response({message: "Something went wrong"})
    end
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
