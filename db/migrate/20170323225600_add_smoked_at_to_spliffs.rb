class AddSmokedAtToSpliffs < ActiveRecord::Migration[5.0]
  def change
    add_column :spliffs, :smoked_at, :datetime
  end
end
