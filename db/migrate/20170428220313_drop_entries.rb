class DropEntries < ActiveRecord::Migration[5.0]
  def change
  	drop_table :entries
  	drop_table :evening_rituals
  end
end
