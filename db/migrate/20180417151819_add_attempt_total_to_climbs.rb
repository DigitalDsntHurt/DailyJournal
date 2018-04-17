class AddAttemptTotalToClimbs < ActiveRecord::Migration[5.0]
  def change
  	add_column :climbs, :attempt_total, :integer
  end
end
