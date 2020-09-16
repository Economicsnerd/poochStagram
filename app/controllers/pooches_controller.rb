class PoochesController < ApplicationController
  # Run this before any method
  before_action :set_pooch, only: [:show, :edit, :update, :destroy]


  # GET /pooches
  def index
    @pooches = Pooch.all
  end

  # GET /pooches/new
  def new
    @pooch = Pooch.new
  end

  # GET /pooches/:id
  def show
  end

  # PATCH /pooches/:id
  def edit
  end

  def update
    @pooch.update(pooch_params)
    # Redirect to show Page
    redirect_to pooch_path(@pooch)
  end

  # POST /pooches
  def create
    @pooch = Pooch.new(pooch_params)
    @pooch.save

    # Redirect to show page
    redirect_to pooch_path(@pooch)
  end

  # DELETE /pooches/:id
  def destroy
    @pooch.destroy
    # Redirect to index
    redirect_to root_path
  end


  private

  def set_pooch
    @pooch = Pooch.find(params[:id])
  end

  def pooch_params
    params.require(:pooch).permit(:name, :caption, :likes)
  end

end
