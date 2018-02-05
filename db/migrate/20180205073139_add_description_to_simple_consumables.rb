class AddDescriptionToSimpleConsumables < ActiveRecord::Migration[5.0]
  def change
  	add_column :simple_consumables, :description, :text
  end
end
