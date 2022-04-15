class PlantsController < ApplicationController
     # GET /plants
  def index 
    plant = Plant.all
    render json: plant
  end
     # GET /plants/:id
  def show 
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end
     # POST /plants
  def create 
    plant = Plant.create(params.permit(:name, :image, :price))
    render json: plant, status: :created
  end
end
