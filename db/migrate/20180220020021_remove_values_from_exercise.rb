class RemoveValuesFromExercise < ActiveRecord::Migration[5.0]
  def change
  	remove_column :exercises, :time
  	remove_column :exercises, :reps
  	remove_column :exercises, :lbs
  end
end
