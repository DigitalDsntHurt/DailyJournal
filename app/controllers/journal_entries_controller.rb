class JournalEntriesController < ApplicationController
  before_action :set_journal_entry, only: [:show, :edit, :update, :destroy]

  # GET /journal_entries
  # GET /journal_entries.json
  def index
    @journal_entries = JournalEntry.all
  end

  # GET /journal_entries/1
  # GET /journal_entries/1.json
  def show
  end

  # GET /journal_entries/new
  def new
    @journal_entry = JournalEntry.new
  end

  # GET /journal_entries/1/edit
  def edit
  end

  # POST /journal_entries
  # POST /journal_entries.json
  def create
    @journal_entry = JournalEntry.new(journal_entry_params)

    respond_to do |format|
      if @journal_entry.save
        format.html { redirect_to :back, notice: 'Journal entry was successfully created.' }
        format.json { render :back, status: :created, location: :back }
      else
        format.html { render :new }
        format.json { render json: @journal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journal_entries/1
  # PATCH/PUT /journal_entries/1.json
  def update
    respond_to do |format|
      if @journal_entry.update(journal_entry_params)
        format.html { redirect_to @journal_entry, notice: 'Journal entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @journal_entry }
      else
        format.html { render :edit }
        format.json { render json: @journal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journal_entries/1
  # DELETE /journal_entries/1.json
  def destroy
    @journal_entry.destroy
    respond_to do |format|
      format.html { redirect_to journal_entries_url, notice: 'Journal entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def entries_for_journal_dash
    @journal_entry = JournalEntry.new
  end

  def history
    @journal_entries = JournalEntry.all
    @consumables = Consumable.all
    @everything = (@journal_entries + @consumables).sort_by{|record| record.occurrence_time}.reverse
    @day_groups = @everything.group_by{|record| record.occurrence_date}
    @pairs_of_day_groups = @day_groups.each_slice(2).to_a
    @journal_entry = JournalEntry.new

    @all_entries = JournalEntry.all
    @today = JournalEntry.where(occurrence_date: Date.today)
    @yesterday = JournalEntry.where(occurrence_date: Date.yesterday)
    @dayb4yesterday = JournalEntry.where(occurrence_date: Date.yesterday-1)
    @dayb5yesterday = JournalEntry.where(occurrence_date: Date.yesterday-2)
    @dayb6yesterday = JournalEntry.where(occurrence_date: Date.yesterday-3)
    @dayb7yesterday = JournalEntry.where(occurrence_date: Date.yesterday-4)
    @dayb8yesterday = JournalEntry.where(occurrence_date: Date.yesterday-5)
    @dayb9yesterday = JournalEntry.where(occurrence_date: Date.yesterday-6)

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal_entry
      @journal_entry = JournalEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journal_entry_params
      params.require(:journal_entry).permit(:prompt, :entry, :entry_type)
    end
end
