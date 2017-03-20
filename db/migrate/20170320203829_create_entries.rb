class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :grateful_1
      t.string :grateful_2
      t.string :grateful_3
      t.string :make_today_great_1
      t.string :make_today_great_2
      t.string :make_today_great_3
      t.string :affirmation_1
      t.string :affirmation_2
      t.string :amazing_thing_1
      t.string :amazing_thing_2
      t.string :amazing_thing_3
      t.string :improve_today_1
      t.string :improve_today_2
      t.string :anything_else

      t.timestamps
    end
  end
end
