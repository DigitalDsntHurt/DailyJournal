class CreateEveningRituals < ActiveRecord::Migration[5.0]
  def change
    create_table :evening_rituals do |t|
      t.date :day
      t.boolean :core
      t.boolean :stretch
      t.boolean :brush
      t.boolean :read
      t.boolean :journal

      t.timestamps
    end
  end
end
