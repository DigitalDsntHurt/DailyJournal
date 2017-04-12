class CreateConsumables < ActiveRecord::Migration[5.0]
  def change
    create_table :consumables do |t|
      t.datetime :consumed_at
      t.string :consumption_type
      t.float :quantity
      t.string :units
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5
      t.string :item6
      t.string :item7
      t.string :item8
      t.string :item9
      t.string :item10
      t.string :item11
      t.string :item12
      t.string :item13
      t.string :item14
      t.string :item15
      t.text :notes

      t.timestamps
    end
  end
end
