Rails.application.routes.draw do
  get 'daily_accomplishments/dash_form' => 'daily_accomplishments#dash_form'
  get 'daily_accomplishments/evening_form' => 'daily_accomplishments#evening_form'
  resources :daily_accomplishments

  resources :priorities

  resources :morning_rituals
  resources :evening_rituals
  
  
  get 'dashboards/morning_dash'
  get 'dashboards/evening_dash'
  get 'dashboards/rituals_dash'
  get 'dashboards/goal_tracking_dash'
  get 'dashboards/scratch_dash'
  get 'dashboards/master_dash'
  get 'dashboards/journal_dash'

  get 'journal_entries/history' => 'journal_entries#history'
  get 'journal_entries/entries_for_journal_dash' => 'journal_entries#entries_for_journal_dash'
  resources :journal_entries


  get 'consumables/meal' => 'consumables#meal'
  #get 'consumables/meal' => 'consumables#meal'
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

  resources :climbs

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
