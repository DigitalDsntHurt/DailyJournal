class AddPlannedDateAndPlannedTimeToExercise < ActiveRecord::Migration[5.0]
  def change
	add_column :exercises, :planned_time, :datetime
  	add_column :exercises, :planned_date, :date
  end
end
