class AddOccurrenceTimeToWorkouts < ActiveRecord::Migration[5.0]
  def change
  	add_column :workouts, :occurrence_time, :datetime
  end
end
