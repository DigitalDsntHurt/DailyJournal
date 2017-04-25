class MorningRitualsController < ApplicationController
  before_action :set_morning_ritual, only: [:show, :edit, :update, :destroy]

  # GET /morning_rituals
  # GET /morning_rituals.json
  def index
    @morning_rituals = MorningRitual.all
  end

  # GET /morning_rituals/1
  # GET /morning_rituals/1.json
  def show
  end

  # GET /morning_rituals/new
  def new
    @morning_ritual = MorningRitual.new
  end

  # GET /morning_rituals/1/edit
  def edit
  end

  # POST /morning_rituals
  # POST /morning_rituals.json
  def create
    @morning_ritual = MorningRitual.new(morning_ritual_params)

    respond_to do |format|
      if @morning_ritual.save
        format.html { redirect_to @morning_ritual, notice: 'Morning ritual was successfully created.' }
        format.json { render :show, status: :created, location: @morning_ritual }
      else
        format.html { render :new }
        format.json { render json: @morning_ritual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /morning_rituals/1
  # PATCH/PUT /morning_rituals/1.json
  def update
    respond_to do |format|
      if @morning_ritual.update(morning_ritual_params)
        format.html { redirect_to @morning_ritual, notice: 'Morning ritual was successfully updated.' }
        format.json { render :show, status: :ok, location: @morning_ritual }
      else
        format.html { render :edit }
        format.json { render json: @morning_ritual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morning_rituals/1
  # DELETE /morning_rituals/1.json
  def destroy
    @morning_ritual.destroy
    respond_to do |format|
      format.html { redirect_to morning_rituals_url, notice: 'Morning ritual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_morning_ritual
      @morning_ritual = MorningRitual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def morning_ritual_params
      params.require(:morning_ritual).permit(:wake_time, :exercise_done, :exercise_name, :exercise_reps, :protein_done, :brush_done, :journal_done, :occurrence_time, :occurrence_date)
    end
end
