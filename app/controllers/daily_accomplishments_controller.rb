class DailyAccomplishmentsController < ApplicationController
  before_action :set_daily_accomplishment, only: [:show, :edit, :update, :destroy]

  # GET /daily_accomplishments
  # GET /daily_accomplishments.json
  def index
    @daily_accomplishments = DailyAccomplishment.all
  end

  # GET /daily_accomplishments/1
  # GET /daily_accomplishments/1.json
  def show
  end

  # GET /daily_accomplishments/new
  def new
    @daily_accomplishment = DailyAccomplishment.new
  end

  # GET /daily_accomplishments/1/edit
  def edit
  end

  # POST /daily_accomplishments
  # POST /daily_accomplishments.json
  def create
    @daily_accomplishment = DailyAccomplishment.new(daily_accomplishment_params)

    respond_to do |format|
      if @daily_accomplishment.save
        format.html { redirect_to @daily_accomplishment, notice: 'Daily accomplishment was successfully created.' }
        format.json { render :show, status: :created, location: @daily_accomplishment }
      else
        format.html { render :new }
        format.json { render json: @daily_accomplishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_accomplishments/1
  # PATCH/PUT /daily_accomplishments/1.json
  def update
    respond_to do |format|
      if @daily_accomplishment.update(daily_accomplishment_params)
        format.html { redirect_to :back, notice: 'Daily accomplishment was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_accomplishment }
      else
        format.html { render :edit }
        format.json { render json: @daily_accomplishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_accomplishments/1
  # DELETE /daily_accomplishments/1.json
  def destroy
    @daily_accomplishment.destroy
    respond_to do |format|
      format.html { redirect_to daily_accomplishments_url, notice: 'Daily accomplishment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def dash_form
    @daily_accomplishment = DailyAccomplishment.where(day: Date.today)[0]
    redirect_to :back
  end

  def evening_form
    @tomorrow_accomplishment = DailyAccomplishment.where(day: Date.today+1)[0]
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_accomplishment
      @daily_accomplishment = DailyAccomplishment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_accomplishment_params
      params.require(:daily_accomplishment).permit(:day, :priority1, :priority1_accomplished, :priority2, :priority2_accomplished, :priority3, :priority3_accomplished, :priority4, :priority4_accomplished, :priority5, :priority5_accomplished, :priority6, :priority6_accomplished, :priority7, :priority7_accomplished, :priority8, :priority8_accomplished, :priority9, :priority9_accomplished)
    end
end
