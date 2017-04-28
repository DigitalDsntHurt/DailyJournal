class CreateEveningRituals < ActiveRecord::Migration[5.0]
  def change
    create_table :evening_rituals do |t|
      t.boolean :stretch
      t.boolean :core
      t.boolean :brush
      t.boolean :wash
      t.boolean :read
      t.boolean :journal
      t.boolean :ktime

      t.timestamps
    end
  end
end
