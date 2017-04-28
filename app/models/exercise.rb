class Exercise < ApplicationRecord
	before_create :set_occurrence_time_and_date

	private
	def set_occurrence_time_and_date
		if self.occurrence_time == nil
			self.occurrence_time = self.created_at
		end
		if self.occurrence_date == nil
			@o_date = self.occurrence_time.strftime("%Y")+"-"+self.occurrence_time.strftime("%m")+"-"+self.occurrence_time.strftime("%d")
			self.occurrence_date = @o_date
		end
	end	
end
