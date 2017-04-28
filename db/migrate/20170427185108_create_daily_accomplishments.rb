class CreateDailyAccomplishments < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_accomplishments do |t|
      t.date :day
      t.text :priority1
      t.boolean :priority1_accomplished
      t.text :priority2
      t.boolean :priority2_accomplished
      t.text :priority3
      t.boolean :priority3_accomplished
      t.text :priority4
      t.boolean :priority4_accomplished
      t.text :priority5
      t.boolean :priority5_accomplished
      t.text :priority6
      t.boolean :priority6_accomplished
      t.text :priority7
      t.boolean :priority7_accomplished
      t.text :priority8
      t.boolean :priority8_accomplished
      t.text :priority9
      t.boolean :priority9_accomplished

      t.timestamps
    end
  end
end
