class CreateGoalIndicators < ActiveRecord::Migration[5.0]
  def change
    create_table :goal_indicators do |t|
      t.string :measure
      t.boolean :boolean_indicator
      t.float :dollars_made_indicator
      t.float :dollars_spent_indicator
      t.text :text_indicator
      t.string :goal_category

      t.timestamps
    end
  end
end
