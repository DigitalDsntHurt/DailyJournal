class SimpleConsumable < ApplicationRecord
	before_create :set_occurrence_time, :set_occurrence_date

	private

	def set_occurrence_time
		self.occurrence_time = self.created_at if self.occurrence_time == nil
	end	
	
	def set_occurrence_date
		@o_date = self.occurrence_time.strftime("%Y")+"-"+self.occurrence_time.strftime("%m")+"-"+self.occurrence_time.strftime("%d")
		self.occurrence_date = @o_date if self.occurrence_date == nil
	end
	
end
