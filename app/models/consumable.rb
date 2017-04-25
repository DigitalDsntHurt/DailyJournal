class Consumable < ApplicationRecord
	before_create :set_occurrence_time_and_date

	private
	def set_occurrence_time_and_date
		self.occurrence_time = self.consumed_at
		@o_date = self.consumed_at.strftime("%Y")+"-"+self.consumed_at.strftime("%m")+"-"+self.consumed_at.strftime("%d")
		self.occurrence_date = @o_date
	end
end
