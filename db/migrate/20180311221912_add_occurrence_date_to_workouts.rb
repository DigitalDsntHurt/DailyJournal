class AddOccurrenceDateToWorkouts < ActiveRecord::Migration[5.0]
  def change
  	add_column :workouts, :occurrence_date, :date
  end
end
