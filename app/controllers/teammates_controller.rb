class TeammatesController < ApplicationController
  before_action :set_teammate, only: [:show, :update, :destroy]

  # GET /teammates
  def index
    @teammates = Teammate.all

    render json: @teammates
  end

  # GET /teammates/1
  def show
    render json: @teammate
  end

  # POST /teammates
  def create
    @teammate = Teammate.new(teammate_params)

    if @teammate.save
      render json: @teammate, status: :created, location: @teammate
    else
      render json: @teammate.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teammates/1
  def update
    if @teammate.update(teammate_params)
      render json: @teammate
    else
      render json: @teammate.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /teammates/1
  def destroy
    @teammate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teammate
      @teammate = Teammate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teammate_params
      params.require(:teammate).permit(:trainer_id, :nickname, :pokemon_id, :alive, :notes, :location_caught)
    end
end
