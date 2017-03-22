Rails.application.routes.draw do
  resources :meals
  post 'spliffs/new_spliff_now' => 'spliffs#new_spliff_now'
  resources :spliffs
  get 'home/index'
  root 'home#index'
  resources :entries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
