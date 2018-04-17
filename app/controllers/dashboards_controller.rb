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
    @make_today_great = JournalEntry.where(prompt: "what would make today great?").last
    @todays_affirmations = JournalEntry.where(prompt: "daily affirmations. i am...").last
    @todays_grattitudes = JournalEntry.where(prompt: "what are you grateful for?").last
    @todays_morning_notes = JournalEntry.where(prompt: "morning journal").last
    @three_amazing_things = JournalEntry.where(prompt: "three amazing things happened today...").last
    @made_today_better = JournalEntry.where(prompt: "how could i have made today better?").last
    @todays_evening_notes = JournalEntry.where(prompt: "evening journal").last

    @journal_entry = JournalEntry.new

    @simple_consumable = SimpleConsumable.new
    @todays_simple_consumables = SimpleConsumable.where(occurrence_date: Date.today).order(:occurrence_time)

    @exercise = Exercise.new
    @todays_planned_exercises = Exercise.where(planned_date: Date.today)#.reverse#.order(planned_date: :desc)
    @todays_occurred_exercises = Exercise.where(occurrence_date: Date.today)
    @todays_exercises = (@todays_planned_exercises.to_a + @todays_occurred_exercises.to_a).uniq.sort_by{|item| 
      if item.occurrence_time == nil
        item.planned_time
      else 
        item.occurrence_time
      end
      }

    @workout = Workout.new

    @todays_workouts = Workout.where(occurrence_date: Date.today)
    @todays_consumption = SimpleConsumable.where(occurrence_date: Date.today)
    @todays_health_summary = (@todays_workouts.to_a + @todays_consumption.to_a).sort_by{|item| item.occurrence_time }
  end

  def yesterday_dash_2018

    @morning_ritual = MorningRitual.new
    @todays_morning_ritual = MorningRitual.where(:day => Date.today-1)

    @evening_ritual = EveningRitual.new
    @todays_evening_ritual = EveningRitual.where(:day => Date.today-1)

    @everyday = Everyday.new
    @todays_everyday = Everyday.where(:created_at => Date.today-1)

    @weight = Weight.new
    @todays_weight = Weight.all

    @gameplan = JournalEntry.where(prompt: "gameplan").last
    @priorities = JournalEntry.where("prompt like ?", "%priorities%").last
    @make_today_great = JournalEntry.where(prompt: "what would make today great?").last

    @journal_entry = JournalEntry.new

    @simple_consumable = SimpleConsumable.new
    @todays_simple_consumables = SimpleConsumable.where(occurrence_date: Date.today-1).order(:occurrence_time)
  end

  def health_dash
    @morning_rituals = MorningRitual.all
    @evening_rituals = EveningRitual.all
    @consumables = SimpleConsumable.all.order(:occurrence_time)
    @exercises = Workout.all.order(:occurrence_time)
    @climbs = Climb.all

  end

  def weekly_dash_2018
    # this year made easier by the fact Jan 1 was a Monday
    @start_date = Date.new(2018,01,01)
    @end_date = Date.today
    @date_range = (@start_date..@end_date)
    @weeks = @date_range.to_a.in_groups_of(7)
  end
end
