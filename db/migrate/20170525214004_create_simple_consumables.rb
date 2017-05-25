class CreateSimpleConsumables < ActiveRecord::Migration[5.0]
  def change
    create_table :simple_consumables do |t|
      t.boolean :on_diet
      t.datetime :occurrence_time
      t.date :occurrence_date

      t.timestamps
    end
  end
end
