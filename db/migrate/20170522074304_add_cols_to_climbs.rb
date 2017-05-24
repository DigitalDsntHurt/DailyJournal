class AddColsToClimbs < ActiveRecord::Migration[5.0]
  def change
  	add_column :climbs, :total, :integer
  	add_column :climbs, :v_total, :integer
  end
end
