class AddOccurrenceDateToMorningRituals < ActiveRecord::Migration[5.0]
  def change
    add_column :morning_rituals, :occurrence_date, :date
  end
end
