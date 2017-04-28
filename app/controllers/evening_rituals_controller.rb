class EveningRitualsController < ApplicationController
  before_action :set_evening_ritual, only: [:show, :edit, :update, :destroy]

  # GET /evening_rituals
  # GET /evening_rituals.json
  def index
    @evening_rituals = EveningRitual.all
  end

  # GET /evening_rituals/1
  # GET /evening_rituals/1.json
  def show
  end

  # GET /evening_rituals/new
  def new
    @evening_ritual = EveningRitual.new
  end

  # GET /evening_rituals/1/edit
  def edit
  end

  # POST /evening_rituals
  # POST /evening_rituals.json
  def create
    @evening_ritual = EveningRitual.new(evening_ritual_params)

    respond_to do |format|
      if @evening_ritual.save
        format.html { redirect_to @evening_ritual, notice: 'Evening ritual was successfully created.' }
        format.json { render :show, status: :created, location: @evening_ritual }
      else
        format.html { render :new }
        format.json { render json: @evening_ritual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evening_rituals/1
  # PATCH/PUT /evening_rituals/1.json
  def update
    respond_to do |format|
      if @evening_ritual.update(evening_ritual_params)
        format.html { redirect_to @evening_ritual, notice: 'Evening ritual was successfully updated.' }
        format.json { render :show, status: :ok, location: @evening_ritual }
      else
        format.html { render :edit }
        format.json { render json: @evening_ritual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evening_rituals/1
  # DELETE /evening_rituals/1.json
  def destroy
    @evening_ritual.destroy
    respond_to do |format|
      format.html { redirect_to evening_rituals_url, notice: 'Evening ritual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evening_ritual
      @evening_ritual = EveningRitual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evening_ritual_params
      params.require(:evening_ritual).permit(:stretch, :core, :brush, :wash, :read, :journal, :ktime)
    end
end
