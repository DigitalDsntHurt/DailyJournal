class CreateWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :weights do |t|
      t.float :weight
      t.datetime :weighed_at
      t.string :notes

      t.timestamps
    end
  end
end
