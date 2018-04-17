class AddAttemptsAndMoreToClimbs < ActiveRecord::Migration[5.0]
  def change
  	add_column :climbs, :v0_attempts, :integer
  	add_column :climbs, :v1_attempts, :integer
  	add_column :climbs, :v2_attempts, :integer
  	add_column :climbs, :v3_attempts, :integer
  	add_column :climbs, :v4_attempts, :integer
  	add_column :climbs, :v5_attempts, :integer
  	add_column :climbs, :v6_attempts, :integer
  	add_column :climbs, :v7_attempts, :integer
  	add_column :climbs, :v8_attempts, :integer
  	add_column :climbs, :v9_attempts, :integer
  	add_column :climbs, :minutes, :integer
  end
end
