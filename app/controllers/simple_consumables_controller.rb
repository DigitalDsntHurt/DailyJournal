class SimpleConsumablesController < ApplicationController
  before_action :set_simple_consumable, only: [:show, :edit, :update, :destroy]

  # GET /simple_consumables
  # GET /simple_consumables.json
  def index
    @simple_consumables = SimpleConsumable.all
  end

  # GET /simple_consumables/1
  # GET /simple_consumables/1.json
  def show
  end

  # GET /simple_consumables/new
  def new
    @simple_consumable = SimpleConsumable.new
  end

  # GET /simple_consumables/1/edit
  def edit
  end

  # POST /simple_consumables
  # POST /simple_consumables.json
  def create
    @simple_consumable = SimpleConsumable.new(simple_consumable_params)

    respond_to do |format|
      if @simple_consumable.save
        format.html { redirect_to :back, notice: 'Simple consumable was successfully created.' }
        format.json { render :index, status: :created, location: :back }
      else
        format.html { render :new }
        format.json { render json: @simple_consumable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_consumables/1
  # PATCH/PUT /simple_consumables/1.json
  def update
    respond_to do |format|
      if @simple_consumable.update(simple_consumable_params)
        format.html { redirect_to '/simple_consumables', notice: 'Simple consumable was successfully updated.' }
        format.json { render :index, status: :ok, location: @simple_consumable }
      else
        format.html { render :edit }
        format.json { render json: @simple_consumable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_consumables/1
  # DELETE /simple_consumables/1.json
  def destroy
    @simple_consumable.destroy
    respond_to do |format|
      format.html { redirect_to simple_consumables_url, notice: 'Simple consumable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_consumable
      @simple_consumable = SimpleConsumable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_consumable_params
      params.require(:simple_consumable).permit(:consumable_type, :on_diet, :description, :occurrence_time, :occurrence_date)
    end
end
