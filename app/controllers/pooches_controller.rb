class PoochesController < ApplicationController
  # Run this before any method
  before_action :set_pooch, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :home


  # GET /pooches
  def index
    @public = Pooch.published - current_user.pooches.where(published: true)
    @private = current_user.pooches.where(published: false)
    @pooches = @public + @private + current_user.pooches.where(published: true)
  end

  # GET /pooches/new
  def new
    @pooch = current_user.pooches.build
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
    @pooch = current_user.pooches.new(pooch_params)
    if @pooch.save
      redirect_to @pooch, notice: 'Pooch Added <3'
    else
      render :new
    end
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
    params.require(:pooch).permit(:name, :caption, :likes, :photo, :published, :user)
  end

end
