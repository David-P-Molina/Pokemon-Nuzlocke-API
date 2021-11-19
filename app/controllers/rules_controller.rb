class RulesController < ApplicationController
  before_action :set_rule, only: [:show, :update, :destroy]

  # GET /rules
  def index
    @rules = Rule.all

    render json: @rules
  end

  # GET /rules/1
  def show
    render json: @rule
  end

  # POST /rules
  def create
    @rule = Rule.new(rule_params)

    if @rule.save
      render json: @rule, status: :created, location: @rule
    else
      render json: @rule.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rules/1
  def update
    if @rule.update(rule_params)
      render json: @rule
    else
      render json: @rule.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /rules/1
  def destroy
    @rule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rule
      @rule = Rule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rule_params
      params.require(:rule).permit(:name, :content)
    end
end
