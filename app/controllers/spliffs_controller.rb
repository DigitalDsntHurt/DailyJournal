class SpliffsController < ApplicationController
  before_action :set_spliff, only: [:show, :edit, :update, :destroy]

  # GET /spliffs
  # GET /spliffs.json
  def index
    @spliffs = Spliff.all
  end

  # GET /spliffs/1
  # GET /spliffs/1.json
  def show
  end

  # GET /spliffs/new
  def new
    @spliff = Spliff.new
  end

  # GET /spliffs/1/edit
  def edit
  end

  # POST /spliffs
  # POST /spliffs.json
  def create
    @spliff = Spliff.new(spliff_params)

    respond_to do |format|
      if @spliff.save
        format.html { redirect_to @spliff, notice: 'Spliff was successfully created.' }
        format.json { render :show, status: :created, location: @spliff }
      else
        format.html { render :new }
        format.json { render json: @spliff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spliffs/1
  # PATCH/PUT /spliffs/1.json
  def update
    respond_to do |format|
      if @spliff.update(spliff_params)
        format.html { redirect_to @spliff, notice: 'Spliff was successfully updated.' }
        format.json { render :show, status: :ok, location: @spliff }
      else
        format.html { render :edit }
        format.json { render json: @spliff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spliffs/1
  # DELETE /spliffs/1.json
  def destroy
    @spliff.destroy
    respond_to do |format|
      format.html { redirect_to spliffs_url, notice: 'Spliff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def new_spliff_now
    Spliff.create!()
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spliff
      @spliff = Spliff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spliff_params
      params.fetch(:spliff, {})
    end
end
