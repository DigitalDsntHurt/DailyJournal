class GoalIndicatorsController < ApplicationController
  before_action :set_goal_indicator, only: [:show, :edit, :update, :destroy]

  # GET /goal_indicators
  # GET /goal_indicators.json
  def index
    @goal_indicators = GoalIndicator.all
  end

  # GET /goal_indicators/1
  # GET /goal_indicators/1.json
  def show
  end

  # GET /goal_indicators/new
  def new
    @goal_indicator = GoalIndicator.new
  end

  # GET /goal_indicators/1/edit
  def edit
  end

  # POST /goal_indicators
  # POST /goal_indicators.json
  def create
    @goal_indicator = GoalIndicator.new(goal_indicator_params)

    respond_to do |format|
      if @goal_indicator.save
        format.html { redirect_to :back, notice: 'Goal indicator was successfully created.' }
        format.json { render :back, status: :created, location: :back }
      else
        format.html { render :new }
        format.json { render json: @goal_indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_indicators/1
  # PATCH/PUT /goal_indicators/1.json
  def update
    respond_to do |format|
      if @goal_indicator.update(goal_indicator_params)
        format.html { redirect_to @goal_indicator, notice: 'Goal indicator was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_indicator }
      else
        format.html { render :edit }
        format.json { render json: @goal_indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_indicators/1
  # DELETE /goal_indicators/1.json
  def destroy
    @goal_indicator.destroy
    respond_to do |format|
      format.html { redirect_to goal_indicators_url, notice: 'Goal indicator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_indicator
      @goal_indicator = GoalIndicator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_indicator_params
      params.require(:goal_indicator).permit(:measure, :boolean_indicator, :dollars_made_indicator, :dollars_spent_indicator, :text_indicator, :goal_category)
    end
end
