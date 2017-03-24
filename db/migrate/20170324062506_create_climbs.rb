class CreateClimbs < ActiveRecord::Migration[5.0]
  def change
    create_table :climbs do |t|
      t.integer :v0s
      t.integer :v1s
      t.integer :v2s
      t.integer :v3s
      t.integer :v4s
      t.integer :v5s
      t.integer :v6s
      t.integer :v7s
      t.integer :v8s
      t.integer :v9s
      t.date    :climb_date
      t.text    :other

      t.timestamps
    end
  end
end
