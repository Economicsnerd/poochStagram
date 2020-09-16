class PoochesController < ApplicationController
  # Run this before any method
  before_action :set_pooch, only: [:show, :edit, :update, :destroy]


  # GET /pooches
  def index
  end
  # GET /pooches/:id
  def show
  end
  # GET /pooches/news
  def new
  end
  # GET /pooches/new
  def edit
  end

  # POST /pooches
  def create
  end
  # PATCH /pooches/:id
  def update
  end
  # DELETE /pooches/:id
  def destroy
  end


  private

  def set_pooch
  end

  def pooch_params
    params.require(:pooch).permit(:name, :caption, :likes)
  end

end
