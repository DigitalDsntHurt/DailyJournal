class AddValuesToExercises < ActiveRecord::Migration[5.0]
  def change
  	add_column :exercises, :description, :string
  	add_column :exercises, :notes, :string
  	add_column :exercises, :done, :boolean
  end
end
