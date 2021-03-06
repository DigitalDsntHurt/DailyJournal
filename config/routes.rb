Rails.application.routes.draw do

  get 'home/index'
  root 'dashboards#daily_dash_2018'

  resources :climbs
  resources :workouts
  resources :everydays
  resources :weights
  resources :simple_consumables

  get 'morning_rituals/journal_dash_form' => 'morning_rituals#journal_dash_form'
  resources :morning_rituals
  resources :evening_rituals

  get 'dashboards/daily_dash_2018'
  get 'dashboards/yesterday_dash_2018'
  get 'dashboards/weekly_dash_2018'
  get 'dashboards/morning_dash'
  get 'dashboards/evening_dash'
  get 'dashboards/rituals_dash'
  get 'dashboards/goal_tracking_dash'
  get 'dashboards/scratch_dash'
  get 'dashboards/master_dash'
  get 'dashboards/journal_dash'
  get 'dashboards/health_dash'
  get 'dashboards/success'

  get 'journal_entries/history' => 'journal_entries#history'
  get 'journal_entries/entries_for_journal_dash' => 'journal_entries#entries_for_journal_dash'
  resources :journal_entries

  get 'consumables/meal' => 'consumables#meal'
  get 'consumables/smoothie' => 'consumables#smoothie'
  get 'consumables/omelette' => 'consumables#omelette'
  get 'consumables/mexican' => 'consumables#mexican'
  get 'consumables/food_binge' => 'consumables#food_binge'
  get 'consumables/drink' => 'consumables#drink'
  get 'consumables/drink_water' => 'consumables#drink_water'
  get 'consumables/drink_wine' => 'consumables#drink_wine'
  get 'consumables/drink_coffee' => 'consumables#drink_coffee'
  get 'consumables/drink_binge' => 'consumables#drink_binge'
  post 'consumables/drink_water_now' => 'consumables#drink_water_now'
  post 'consumables/drink_coffee_now' => 'consumables#drink_coffee_now'
  post 'consumables/new_spliff_now' => 'consumables#new_spliff_now'
  get 'consumables/spliff_binge' => 'consumables#spliff_binge'
  resources :consumables

  get 'exercises/copy' => 'exercises#copy'
  get 'exercises/stretch' => 'exercises#stretch'
  get 'exercises/core' => 'exercises#core'
  get 'exercises/run' => 'exercises#run'
  get 'exercises/kettlebell' => 'exercises#kettlebell'
  resources :exercises

  resources :priorities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
