class AddOccurrenceDateToJournalEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :journal_entries, :occurrence_date, :date
  end
end
