class GravestonesController < ApplicationController
  before_action :set_gravestone, only: [:show, :update, :destroy]

  # GET /gravestones
  def index
    @gravestones = Gravestone.all

    render json: @gravestones
  end

  # GET /gravestones/1
  def show
    render json: @gravestone
  end

  # POST /gravestones
  def create
    @gravestone = Gravestone.new(gravestone_params)

    if @gravestone.save
      render json: @gravestone, status: :created, location: @gravestone
    else
      render json: @gravestone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gravestones/1
  def update
    if @gravestone.update(gravestone_params)
      render json: @gravestone
    else
      render json: @gravestone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gravestones/1
  def destroy
    @gravestone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gravestone
      @gravestone = Gravestone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gravestone_params
      params.require(:gravestone).permit(:trainer_id, :level, :death, :teammate_id, :notes, :nuzlocke_id)
    end
end
