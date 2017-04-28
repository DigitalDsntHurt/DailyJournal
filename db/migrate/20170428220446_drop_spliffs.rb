class DropSpliffs < ActiveRecord::Migration[5.0]
  def change
  	drop_table :spliffs
  	drop_table :priorities
  	drop_table :meals
  end
end
