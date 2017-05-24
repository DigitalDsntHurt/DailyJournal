# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#date = Date.today
#300.times do 
#	Entry.create!(:created_at => date)
#	date + 1
#end


=begin
############
###### Update JournalEntries
###### Give DateTime and Date values to new occurrence_time and occurrence_date columns
############
jes = JournalEntry.all
jes.select{|je| je.occurrence_date == nil }.each{|entry|
	@o_date = entry.updated_at.strftime("%Y")+"-"+entry.updated_at.strftime("%m")+"-"+entry.updated_at.strftime("%d")
	entry.update!(:occurrence_time => entry.updated_at, :occurrence_date => @o_date)
}
=end

=begin
############
###### Update Consumables
###### Give DateTime and Date values to new occurrence_time and occurrence_date columns
############
cs = Consumable.all
cs.select{|c| c.occurrence_date == nil }.each{|entry|
	@o_date = entry.consumed_at.strftime("%Y")+"-"+entry.consumed_at.strftime("%m")+"-"+entry.consumed_at.strftime("%d")
	entry.update!(:occurrence_time => entry.consumed_at, :occurrence_date => @o_date)
}
=end

=begin
############
###### Create One Daily Priority record for every day until 2018
############
today = Date.today
extant_days = DailyAccomplishment.all.pluck(:day)

until today.year == 2018
	DailyAccomplishment.create!(:day => today) unless extant_days.include?(today)
	today += 1
end
=end

=begin
############
###### Create one Morning Ritual record for every day until 2018
############
today = Date.today
extant_days = MorningRitual.all.pluck(:day)

until today.year == 2018
	MorningRitual.create!(:day => today) unless extant_days.include?(today)
	today += 1
end
=end


=begin
############
###### Create one Morning Ritual record for every day until 2018
############
today = Date.today
extant_days = EveningRitual.all.pluck(:day)

until today.year == 2018
	EveningRitual.create!(:day => today) unless extant_days.include?(today)
	today += 1
end
=end

=begin
############
###### Create one Goal Indicator record for every day until 2018
############
today = Date.today
extant_days = GoalIndicator.all.pluck(:day)

until today.year == 2018
	GoalIndicator.create!(:day => today) unless extant_days.include?(today)
	today += 1
end
=end


=begin
############
###### Update Climb values for new columns total and v_total
############
Climb.where(:v9s => nil).each{ |climb|
	climb.update!(:v9s => 0)
}
=end