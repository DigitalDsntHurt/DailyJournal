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

    @daily_accomplishment = DailyAccomplishment.where(day: Date.today)[0]
    @tomorrow_accomplishment = DailyAccomplishment.where(day: Date.today+1)[0]
    @journal_entry = JournalEntry.new
    @morning_ritual = MorningRitual.where(day: Date.today)[0]
    @evening_ritual = EveningRitual.where(day: Date.today)[0]
    @goal_indicator = GoalIndicator.new

    @recent_impulses = Impulse.all.order(created_at: :desc).take(10)
  end

  def rituals_dash
  end

  def goal_tracking_dash
  end

  def scratch_dash
  end

  def master_dash
  end
end
