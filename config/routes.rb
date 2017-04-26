Rails.application.routes.draw do
  resources :morning_rituals
  get 'dashboards/morning_dash'
  get 'dashboards/evening_dash'
  get 'dashboards/rituals_dash'
  get 'dashboards/goal_tracking_dash'
  get 'dashboards/scratch_dash'
  get 'dashboards/master_dash'
  get 'dashboards/journal_dash'

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
  resources :meals
  post 'spliffs/new_spliff_now' => 'spliffs#new_spliff_now'
  resources :spliffs
  get 'home/index'
  root 'home#index'
  resources :entries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
