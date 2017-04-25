class AddOccurrenceDateToConsumables < ActiveRecord::Migration[5.0]
  def change
    add_column :consumables, :occurrence_date, :date
  end
end
