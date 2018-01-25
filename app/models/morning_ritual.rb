class MorningRitual < ApplicationRecord
	before_create :set_day

	private

	def set_day
		if self.day == nil
			self.day = Date.today
		end
	end
end
