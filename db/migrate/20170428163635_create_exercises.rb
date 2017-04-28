class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :time
      t.integer :reps
      t.integer :lbs
      t.datetime :occurrence_time
      t.date :occurrence_date

      t.timestamps
    end
  end
end
