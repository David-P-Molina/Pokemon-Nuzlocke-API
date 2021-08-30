class GraveyardsController < ApplicationController
  before_action :set_graveyard, only: [:show, :update, :destroy]

  # GET /graveyards
  def index
    @graveyards = Graveyard.all

    render json: @graveyards
  end

  # GET /graveyards/1
  def show
    render json: @graveyard
  end

  # POST /graveyards
  def create
    @graveyard = Graveyard.new(graveyard_params)

    if @graveyard.save
      render json: @graveyard, status: :created, location: @graveyard
    else
      render json: @graveyard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graveyards/1
  def update
    if @graveyard.update(graveyard_params)
      render json: @graveyard
    else
      render json: @graveyard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graveyards/1
  def destroy
    @graveyard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graveyard
      @graveyard = Graveyard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def graveyard_params
      params.require(:graveyard).permit(:trainer_id, :user_id, :name)
    end
end
