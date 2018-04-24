class AddSportAttemptsToClimbs < ActiveRecord::Migration[5.0]
  def change
  	add_column :climbs, :nine_ab_attempts, :integer
  	add_column :climbs, :nine_cd_attempts, :integer
  	add_column :climbs, :ten_ab_attempts, :integer
  	add_column :climbs, :ten_cd_attempts, :integer
  	add_column :climbs, :eleven_ab_attempts, :integer
  	add_column :climbs, :eleven_cd_attempts, :integer
  	add_column :climbs, :twelve_a_attempts, :integer
  	add_column :climbs, :twelve_b_attempts, :integer
  	add_column :climbs, :twelve_c_attempts, :integer
  	add_column :climbs, :twelve_d_attempts, :integer  	
  end
end
