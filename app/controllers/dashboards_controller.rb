class DashboardsController < ApplicationController
  def morning_dash
  end

  def evening_dash
  end

  def journal_dash
    @journal_entries = JournalEntry.all
    @consumables = Consumable.all
    @everything = (@journal_entries + @consumables).sort_by{|record| record.occurrence_time}.reverse
    @day_groups = @everything.group_by{|record| record.occurrence_date}
    @pairs_of_day_groups = @day_groups.each_slice(2).to_a
    #@day_groups.each{|dg|

    #}

    @tomorrow_accomplishment = DailyAccomplishment.where(day: Date.today+1)[0]
    @journal_entry = JournalEntry.new
    @morning_ritual = MorningRitual.where(day: Date.today)[0]
    @evening_ritual = EveningRitual.where(day: Date.today)[0]
  end

  def rituals_dash
  end

  def goal_tracking_dash
  end

  def scratch_dash
  end

  def master_dash
  end

  def daily_dash_2018

    @morning_ritual = MorningRitual.new
    @todays_morning_ritual = MorningRitual.where(:day => Date.today)

    @evening_ritual = EveningRitual.new
    @todays_evening_ritual = EveningRitual.where(:day => Date.today)

    @everyday = Everyday.new
    @todays_everyday = Everyday.all.last

    @weight = Weight.new
    @todays_weight = Weight.all

    @gameplan = JournalEntry.where(prompt: "gameplan").last
    @priorities = JournalEntry.where("prompt like ?", "%priorities%").last

    @journal_entry = JournalEntry.new
  end
end
