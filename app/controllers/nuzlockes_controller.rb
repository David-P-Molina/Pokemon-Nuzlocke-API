class NuzlockesController < ApplicationController
  before_action :set_nuzlocke, only: [:show, :update, :destroy]

  # GET /nuzlockes
  def index
    @nuzlockes = Nuzlocke.all

    render json: @nuzlockes
  end

  # GET /nuzlockes/1
  def show
    render json: @nuzlocke
  end

  # POST /nuzlockes
  def create
    @nuzlocke = Nuzlocke.new(nuzlocke_params)

    if @nuzlocke.save
      render json: @nuzlocke, status: :created, location: @nuzlocke
    else
      render json: @nuzlocke.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nuzlockes/1
  def update
    if @nuzlocke.update(nuzlocke_params)
      render json: @nuzlocke
    else
      render json: @nuzlocke.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nuzlockes/1
  def destroy
    @nuzlocke.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nuzlocke
      @nuzlocke = Nuzlocke.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nuzlocke_params
      params.require(:nuzlocke).permit(:name, :difficulty)
    end
end
