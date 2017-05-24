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



############
###### Update Climb values for new columns total and v_total
############
=begin
Climb.where(:v1s => nil).each{ |climb|
	climb.update!(:v1s => 0)
}

Climb.where(:v2s => nil).each{ |climb|
	climb.update!(:v2s => 0)
}

Climb.where(:v3s => nil).each{ |climb|
	climb.update!(:v3s => 0)
}

Climb.where(:v4s => nil).each{ |climb|
	climb.update!(:v4s => 0)
}
=end

Climb.where(:v9s => nil).each{ |climb|
	climb.update!(:v9s => 0)
}
=begin
Climb.all.each{|climb|
	if climb.v0s == nil
		climb.update!(v0s: 0) 
		#climb.v0s = 0
	end

	if climb.v9s == nil
		climb.update!(v9s: 0) 
		#climb.v0s = 0
	end
	puts "======"
	#cols = Climb.column_names
	#cols.each{|col|
	#	p climb.col
	#}


	if climb.v1s == nil
		climb.v1s = 0
	end
	if climb.v2s == nil
		climb.v2s = 0
	end
	if climb.v3s == nil
		climb.v3s = 0			
	end
	if climb.v4s == nil
		climb.v4s = 0
	end
	if climb.v5s == nil
		climb.v5s = 0			
	end
	if climb.v6s == nil
		climb.v6s = 0
	end
	if climb.v7s == nil
		climb.v7s = 0
	end
	if climb.v8s == nil
		climb.v8s = 0			
	end
	if climb.v9s == nil
		climb.v9s = 0
	end
	if climb.v9s == nil
		climb.v9s = 0
	end
=end
#}


#Climb.where(total: 0).each{|climb|
#	climb.update!(total: climb.v0s + climb.v1s + climb.v2s + climb.v3s + climb.v4s + climb.v5s + climb.v6s + climb.v7s + climb.v8s + climb.v9s)
#}

#Climb.where(v_total: 0).each{|climb|
#	climb.update!(v_total: climb.v0s + climb.v1s + climb.v2s*2 + climb.v3s*3 + climb.v4s*4 + climb.v5s*5 + climb.v6s*6 + climb.v7s*7 + climb.v8s*8 + climb.v9s*9)
#}

=begin
=end

