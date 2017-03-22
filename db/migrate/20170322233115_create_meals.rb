class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.datetime :eaten_at
      t.string :meal
      t.string :meal_source
      t.string :i1
      t.string :i2
      t.string :i3
      t.string :i4
      t.string :i5
      t.string :i6
      t.string :i7
      t.string :i8
      t.string :i9
      t.string :i10
      t.string :i11
      t.string :i12
      t.string :i_other
      t.string :notes

      t.timestamps
    end
  end
end
