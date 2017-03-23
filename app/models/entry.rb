class Entry < ApplicationRecord
	#before_validation :set_entry_date
	validates_presence_of :entry_date
	validates_uniqueness_of :entry_date
	
	private
	#def set_entry_date
		#if self.entry_date == nil
			#self.entry_date = self.created_at
			#self.update(entry_date: Date.today)
		#end
	end
end
