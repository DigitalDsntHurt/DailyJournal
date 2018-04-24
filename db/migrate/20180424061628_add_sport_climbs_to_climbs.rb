class AddSportClimbsToClimbs < ActiveRecord::Migration[5.0]
  def change
  	add_column :climbs, :nine_ab, :integer
  	add_column :climbs, :nine_cd, :integer
  	add_column :climbs, :ten_ab, :integer
  	add_column :climbs, :ten_cd, :integer
  	add_column :climbs, :eleven_ab, :integer
  	add_column :climbs, :eleven_cd, :integer
  	add_column :climbs, :twelve_a, :integer
  	add_column :climbs, :twelve_b, :integer
  	add_column :climbs, :twelve_c, :integer
  	add_column :climbs, :twelve_d, :integer
  end
end
