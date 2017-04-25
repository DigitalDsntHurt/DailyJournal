class AddOccurrenceTimeToConsumables < ActiveRecord::Migration[5.0]
  def change
    add_column :consumables, :occurrence_time, :datetime
  end
end
