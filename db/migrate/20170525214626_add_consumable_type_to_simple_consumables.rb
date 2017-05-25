class AddConsumableTypeToSimpleConsumables < ActiveRecord::Migration[5.0]
  def change
  	add_column :simple_consumables, :consumable_type, :string
  end
end
