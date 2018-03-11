class Workout < ApplicationRecord
	before_create :set_occurrence_date
	before_update :set_occurrence_date

	private

	def set_occurrence_date
		self.occurrence_date = self.occurrence_time.to_date
	end
end
