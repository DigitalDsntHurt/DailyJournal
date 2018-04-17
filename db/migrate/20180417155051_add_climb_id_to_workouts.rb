class AddClimbIdToWorkouts < ActiveRecord::Migration[5.0]
  def change
  	add_column :workouts, :climb_id, :integer
  end
end
