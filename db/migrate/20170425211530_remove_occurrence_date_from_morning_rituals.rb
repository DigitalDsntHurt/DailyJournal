class RemoveOccurrenceDateFromMorningRituals < ActiveRecord::Migration[5.0]
  def change
    remove_column :morning_rituals, :occurrence_date, :datetime
  end
end
