class RenameColumn < ActiveRecord::Migration[5.0]
  def change
  	change_table :morning_rituals do |t|
  		t.rename :exercise_done?, :exercise_done
  		t.rename :brushed?, :brush_done
  		t.rename :journaled?, :journal_done
  		t.rename :protein_consumed?, :protein_done
  	end
  end
end
