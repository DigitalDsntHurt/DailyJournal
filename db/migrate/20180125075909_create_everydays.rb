class CreateEverydays < ActiveRecord::Migration[5.0]
  def change
    create_table :everydays do |t|
      t.boolean :read
      t.boolean :cardio
      t.boolean :exercise
      t.boolean :eat_to_plan
      t.boolean :make_money

      t.timestamps
    end
  end
end
