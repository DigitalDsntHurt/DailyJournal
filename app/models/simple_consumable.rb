class SimpleConsumable < ApplicationRecord
	before_create :set_occurrence_time_and_date

	private
	def set_occurrence_time_and_date
		self.occurrence_time = self.created_at if self.occurrence_time == nil
		@o_date = self.created_at.strftime("%Y")+"-"+self.created_at.strftime("%m")+"-"+self.created_at.strftime("%d")
		self.occurrence_date = @o_date if self.occurrence_date == nil
	end	
end
