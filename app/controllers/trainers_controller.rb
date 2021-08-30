class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :update, :destroy]

  # GET /trainers
  def index
    @trainers = Trainer.all

    render json: @trainers
  end

  # GET /trainers/1
  def show
    render json: @trainer
  end

  # POST /trainers
  def create
    @trainer = Trainer.new(trainer_params)

    if @trainer.save
      render json: @trainer, status: :created, location: @trainer
    else
      render json: @trainer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trainers/1
  def update
    if @trainer.update(trainer_params)
      render json: @trainer
    else
      render json: @trainer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trainers/1
  def destroy
    @trainer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trainer_params
      params.require(:trainer).permit(:name, :trainer_id_number, :gym_badge, :region, :pokemon_seen, :pokemon_caught)
    end
end
