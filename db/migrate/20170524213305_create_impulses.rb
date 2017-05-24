class CreateImpulses < ActiveRecord::Migration[5.0]
  def change
    create_table :impulses do |t|
      t.string :name
      t.boolean :resisted

      t.timestamps
    end
  end
end
