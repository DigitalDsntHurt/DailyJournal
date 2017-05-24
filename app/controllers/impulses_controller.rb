class ImpulsesController < ApplicationController
  before_action :set_impulse, only: [:show, :edit, :update, :destroy]

  # GET /impulses
  # GET /impulses.json
  def index
    @impulses = Impulse.all
  end

  # GET /impulses/1
  # GET /impulses/1.json
  def show
  end

  # GET /impulses/new
  def new
    @impulse = Impulse.new
  end

  # GET /impulses/1/edit
  def edit
  end

  # POST /impulses
  # POST /impulses.json
  def create
    @impulse = Impulse.new(impulse_params)

    respond_to do |format|
      if @impulse.save
        format.html { redirect_to @impulse, notice: 'Impulse was successfully created.' }
        format.json { render :show, status: :created, location: @impulse }
      else
        format.html { render :new }
        format.json { render json: @impulse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impulses/1
  # PATCH/PUT /impulses/1.json
  def update
    respond_to do |format|
      if @impulse.update(impulse_params)
        format.html { redirect_to @impulse, notice: 'Impulse was successfully updated.' }
        format.json { render :show, status: :ok, location: @impulse }
      else
        format.html { render :edit }
        format.json { render json: @impulse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impulses/1
  # DELETE /impulses/1.json
  def destroy
    @impulse.destroy
    respond_to do |format|
      format.html { redirect_to impulses_url, notice: 'Impulse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_impulse_to_resisted
    impulse = Impulse.find(params[:id])
    impulse.update!(resisted: true)
    redirect_to :back
  end

  def set_impulse_to_not_resisted
    impulse = Impulse.find(params[:id])
    impulse.update!(resisted: false)
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impulse
      @impulse = Impulse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def impulse_params
      params.require(:impulse).permit(:name, :resisted)
    end
end
