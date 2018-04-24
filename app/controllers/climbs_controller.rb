class ClimbsController < ApplicationController
  before_action :set_climb, only: [:show, :edit, :update, :destroy]

  # GET /climbs
  # GET /climbs.json
  def index
    @climbs = Climb.all
  end

  # GET /climbs/1
  # GET /climbs/1.json
  def show
  end

  # GET /climbs/new
  def new
    @climb = Climb.new
  end

  # GET /climbs/1/edit
  def edit
  end

  # POST /climbs
  # POST /climbs.json
  def create
    @climb = Climb.new(climb_params)

    respond_to do |format|
      if @climb.save
        format.html { redirect_to @climb, notice: 'Climb was successfully created.' }
        format.json { render :show, status: :created, location: @climb }
      else
        format.html { render :new }
        format.json { render json: @climb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /climbs/1
  # PATCH/PUT /climbs/1.json
  def update
    respond_to do |format|
      if @climb.update(climb_params)
        format.html { redirect_to @climb, notice: 'Climb was successfully updated.' }
        format.json { render :show, status: :ok, location: @climb }
      else
        format.html { render :edit }
        format.json { render json: @climb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /climbs/1
  # DELETE /climbs/1.json
  def destroy
    @climb.destroy
    respond_to do |format|
      format.html { redirect_to climbs_url, notice: 'Climb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_climb
      @climb = Climb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def climb_params
      params.require(:climb).permit(:v0s, :v1s, :v2s, :v3s, :v4s, :v5s, :v6s, :v7s, :v8s, :v9s, :climb_date, :other, :v0_attempts, :v1_attempts, :v2_attempts, :v3_attempts, :v4_attempts, :v5_attempts, :v6_attempts, :v7_attempts, :v8_attempts, :v9_attempts, :minutes, :nine_ab, :nine_cd, :ten_ab, :ten_cd, :eleven_ab, :eleven_cd, :twelve_a, :twelve_b, :twelve_c, :twelve_d, :nine_ab_attempts, :nine_cd_attempts, :ten_ab_attempts, :ten_cd_attempts, :eleven_ab_attempts, :eleven_cd_attempts, :twelve_a_attempts, :twelve_b_attempts, :twelve_c_attempts, :twelve_d_attempts )
    end
end
