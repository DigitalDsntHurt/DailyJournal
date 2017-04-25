class CreateMorningRituals < ActiveRecord::Migration[5.0]
  def change
    create_table :morning_rituals do |t|
      t.datetime :wake_time
      t.boolean :exercise_done?
      t.string :exercise_name
      t.integer :exercise_reps
      t.boolean :protein_consumed?
      t.boolean :brushed?
      t.boolean :journaled?
      t.datetime :occurrence_time
      t.datetime :occurrence_date

      t.timestamps
    end
  end
end
