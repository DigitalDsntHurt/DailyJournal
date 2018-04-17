class Climb < ApplicationRecord
	
	before_create :set_vals_to_zero, :set_total, :set_attempt_total, :set_v_total
	after_create :create_workout_from_climb
	before_update :set_vals_to_zero, :set_total, :set_attempt_total, :set_v_total
	after_update :update_workout_from_climb

	private

	def set_vals_to_zero
		if self.v0s == nil
			self.v0s = 0
		end
		if self.v0_attempts == nil
			self.v0_attempts = 0
		end
		if self.v1s == nil
			self.v1s = 0
		end
		if self.v1_attempts == nil
			self.v1_attempts = 0
		end
		if self.v2s == nil
			self.v2s = 0
		end
		if self.v2_attempts == nil
			self.v2_attempts = 0
		end
		if self.v3s == nil
			self.v3s = 0			
		end
		if self.v3_attempts == nil
			self.v3_attempts = 0
		end
		if self.v4s == nil
			self.v4s = 0
		end
		if self.v4_attempts == nil
			self.v4_attempts = 0
		end
		if self.v5s == nil
			self.v5s = 0			
		end
		if self.v5_attempts == nil
			self.v5_attempts = 0
		end
		if self.v6s == nil
			self.v6s = 0
		end
		if self.v6_attempts == nil
			self.v6_attempts = 0
		end
		if self.v7s == nil
			self.v7s = 0
		end
		if self.v7_attempts == nil
			self.v7_attempts = 0
		end
		if self.v8s == nil
			self.v8s = 0			
		end
		if self.v8_attempts == nil
			self.v8_attempts = 0
		end
		if self.v9s == nil
			self.v9s = 0
		end
		if self.v9_attempts == nil
			self.v9_attempts = 0
		end
	end

	def set_total
		self.total = self.v0s + self.v1s + self.v2s + self.v3s + self.v4s + self.v5s + self.v6s + self.v7s + self.v8s + self.v9s
	end

	def set_attempt_total
		self.attempt_total = self.v0s + self.v0_attempts + self.v1s + self.v1_attempts + self.v2s + self.v2_attempts + self.v3s + self.v3_attempts + self.v4s + self.v4_attempts + self.v5s + self.v5_attempts + self.v6s + self.v6_attempts + self.v7s + self.v7_attempts + self.v8s + self.v8_attempts + self.v9s + self.v9_attempts
	end

	def set_v_total
		self.v_total = self.v0s + self.v1s + self.v2s*2 + self.v3s*3 + self.v4s*4 + self.v5s*5 + self.v6s*6 + self.v7s*7 + self.v8s*8 + self.v9s*9	
	end

	def create_workout_from_climb
		@descrip = self.other + ". " + "#{self.total} total sends on #{self.attempt_total} total attempts. v-total: #{self.v_total}"
		if self.minutes == nil
			Workout.create(name: "climb", description: @descrip, minutes: self.attempt_total*2, occurrence_time: self.created_at, climb_id: self.id)
		else
			Workout.create(name: "climb", description: @descrip, minutes: self.minutes, occurrence_time: self.created_at, climb_id: self.id)
		end
	end

	def update_workout_from_climb
		@workout = Workout.where(climb_id: self.id)
		@descrip = self.other + ". " + "#{self.total} total sends on #{self.attempt_total} total attempts. v-total: #{self.v_total}"
		if self.minutes == nil
			@workout.update(description: @descrip, minutes: self.attempt_total*2, occurrence_time: self.created_at)
		else
			@workout.update(description: @descrip, minutes: self.minutes, occurrence_time: self.created_at)
		end
	end

end
