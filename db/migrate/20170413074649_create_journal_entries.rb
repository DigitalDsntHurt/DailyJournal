class CreateJournalEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :journal_entries do |t|
      t.string :prompt
      t.text :entry
      t.string :entry_type

      t.timestamps
    end
  end
end
