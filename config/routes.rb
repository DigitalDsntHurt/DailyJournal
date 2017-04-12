Rails.application.routes.draw do
  get 'consumables/meal' => 'consumables#meal'
  get 'consumables/smoothie' => 'consumables#smoothie'
  get 'consumables/omelette' => 'consumables#omelette'
  get 'consumables/mexican' => 'consumables#mexican'
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
