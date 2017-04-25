json.extract! morning_ritual, :id, :wake_time, :exercise_done?, :exercise_name, :exercise_reps, :protein_consumed?, :brushed?, :journaled?, :occurrence_time, :occurrence_date, :created_at, :updated_at
json.url morning_ritual_url(morning_ritual, format: :json)
