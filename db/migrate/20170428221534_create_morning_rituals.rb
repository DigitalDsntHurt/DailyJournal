class CreateMorningRituals < ActiveRecord::Migration[5.0]
  def change
    create_table :morning_rituals do |t|
      t.date :day
      t.datetime :waketime
      t.boolean :exercise
      t.boolean :brush
      t.boolean :protein
      t.boolean :journal
      t.boolean :drink_water
      t.boolean :read
      t.boolean :meditate
      t.boolean :happy

      t.timestamps
    end
  end
end
