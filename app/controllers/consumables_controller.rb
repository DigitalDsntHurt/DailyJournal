class ConsumablesController < ApplicationController
  before_action :set_consumable, only: [:show, :edit, :update, :destroy]

  # GET /consumables
  # GET /consumables.json
  def index
    @consumables = Consumable.all
  end

  # GET /consumables/1
  # GET /consumables/1.json
  def show
  end

  # GET /consumables/new
  def new
    @consumable = Consumable.new
  end

  # GET /consumables/1/edit
  def edit
  end

  # POST /consumables
  # POST /consumables.json
  def create
    @consumable = Consumable.new(consumable_params)

    respond_to do |format|
      if @consumable.save
        format.html { redirect_to consumables_path, notice: 'Consumable was successfully created.' }
        format.json { render :index, status: :created, location: :index }
      else
        format.html { render :new }
        format.json { render json: @consumable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumables/1
  # PATCH/PUT /consumables/1.json
  def update
    respond_to do |format|
      if @consumable.update(consumable_params)
        format.html { redirect_to @consumable, notice: 'Consumable was successfully updated.' }
        format.json { render :show, status: :ok, location: @consumable }
      else
        format.html { render :edit }
        format.json { render json: @consumable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumables/1
  # DELETE /consumables/1.json
  def destroy
    @consumable.destroy
    respond_to do |format|
      format.html { redirect_to consumables_url, notice: 'Consumable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def meal
    @new_consumable = Consumable.new
  end

  def smoothie
    @new_consumable = Consumable.new
  end

  def omelette
    @new_consumable = Consumable.new
  end

  def mexican
    @new_consumable = Consumable.new
  end

  def food_binge
    @new_consumable = Consumable.new
  end

  def drink
    @new_consumable = Consumable.new
  end

  def drink_water_now
    Consumable.create!(:consumed_at => DateTime.now, :consumption_type => "drink", :quantity => 1500, :units => "ml", :item1 => "water")
    redirect_to :back
  end

  def drink_coffee_now
    Consumable.create!(:consumed_at => DateTime.now, :consumption_type => "drink", :quantity => 500, :units => "ml", :item1 => "coffee")
    redirect_to :back
  end

  def drink_water
    @new_consumable = Consumable.new
  end

  def drink_wine
    @new_consumable = Consumable.new
  end

  def drink_coffee
    @new_consumable = Consumable.new
  end

  def drink_binge
    @new_consumable = Consumable.new
  end

  def new_spliff_now
    Consumable.create!(:consumed_at => DateTime.now, :consumption_type => "smoke", :quantity => 1, :units => "spliff")
    redirect_to :back
  end

  def spliff_binge
    @new_consumable = Consumable.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumable
      @consumable = Consumable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consumable_params
      params.require(:consumable).permit(:consumed_at, :consumption_type, :quantity, :units, :item1, :item2, :item3, :item4, :item5, :item6, :item7, :item8, :item9, :item10, :item11, :item12, :item13, :item14, :item15, :notes)
    end
end
