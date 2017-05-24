class Climb < ApplicationRecord
	
	before_create :set_vals_to_zero
	before_update :set_vals_to_zero

	before_create :set_total 
	before_update :set_total 
	
	before_create :set_v_total
	before_update :set_v_total

	private

	def set_vals_to_zero
		if self.v0s == nil
			self.v0s = 0
		end
		if self.v1s == nil
			self.v1s = 0
		end
		if self.v2s == nil
			self.v2s = 0
		end
		if self.v3s == nil
			self.v3s = 0			
		end
		if self.v4s == nil
			self.v4s = 0
		end
		if self.v5s == nil
			self.v5s = 0			
		end
		if self.v6s == nil
			self.v6s = 0
		end
		if self.v7s == nil
			self.v7s = 0
		end
		if self.v8s == nil
			self.v8s = 0			
		end
		if self.v9s == nil
			self.v9s = 0
		end
	end

	def set_total
		self.total = self.v0s + self.v1s + self.v2s + self.v3s + self.v4s + self.v5s + self.v6s + self.v7s + self.v8s + self.v9s
	end

	def set_v_total
		self.v_total = self.v0s + self.v1s + self.v2s*2 + self.v3s*3 + self.v4s*4 + self.v5s*5 + self.v6s*6 + self.v7s*7 + self.v8s*8 + self.v9s*9	
	end

end
