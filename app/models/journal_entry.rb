class JournalEntry < ApplicationRecord
	before_create :set_occurrence_time_and_date, :downcase_prompt

	private
	def set_occurrence_time_and_date
		self.occurrence_time = self.created_at
		@o_date = self.created_at.strftime("%Y")+"-"+self.created_at.strftime("%m")+"-"+self.created_at.strftime("%d")
		self.occurrence_date = @o_date
	end

	def downcase_prompt
		self.prompt = self.prompt.downcase
	end
end
