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
###### Update JournalEntries
###### Give DateTime and Date values to new occurrence_time and occurrence_date columns
############

jes = JournalEntry.all
jes.select{|je| je.occurrence_date == nil }.each{|entry|
	@o_date = entry.updated_at.strftime("%Y")+"-"+entry.updated_at.strftime("%m")+"-"+entry.updated_at.strftime("%d")
	entry.update!(:occurrence_time => entry.updated_at, :occurrence_date => @o_date)
}
=end