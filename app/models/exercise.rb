class Exercise < ApplicationRecord
=begin	

CREATE
  - if createing an exercise i just did or am doing now
  		- i'd write name, descrip, notes, occurrencetime and done?=true
  			- need to update occurrencedate
  - if creating an exercise in the future 
  		- i'd write name, descrip, notes, occurrencetime and done?=false

UPDATE
  - if updating an exercise from done?=false to done?=true
	  - update occurrencetime and occurrence date
=end

	before_create :set_planned_date, :set_occurrence_date
	before_update :set_occurrence_date_and_time_if_done_is_true

	private

	def set_planned_date
		self.planned_date = self.planned_time.to_date unless planned_time == nil
	end

	def set_occurrence_date
		self.occurrence_date = self.occurrence_time.to_date unless occurrence_time == nil
	end	

	def set_occurrence_date_and_time_if_done_is_true
		if self.done == true and self.occurrence_time == nil and self.occurrence_date == nil and self.planned_time != nil and self.planned_date != nil
			self.occurrence_time = Time.now
			self.occurrence_date = Date.today
			#@o_date = self.updated_at.strftime("%Y")+"-"+self.updated_at.strftime("%m")+"-"+self.updated_at.strftime("%d")
		end
	end
end
