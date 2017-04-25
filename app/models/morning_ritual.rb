class MorningRitual < ApplicationRecord
	before_create :set_occurrence_time_and_date
	before_create :set_exercise_done


	private
	def set_occurrence_time_and_date
		self.occurrence_time = self.wake_time
		@o_date = self.wake_time.strftime("%Y")+"-"+self.wake_time.strftime("%m")+"-"+self.wake_time.strftime("%d")
		self.occurrence_date = @o_date
	end

	def set_exercise_done 
		if self.exercise_reps > 50
			self.exercise_done = true 
		else
			self.exercise_done = false
		end
	end
		
	
end
