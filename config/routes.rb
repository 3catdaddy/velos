Rails.application.routes.draw do
  root 'bookings#index'
  resources :bookings
  resources :users
  resources :bikes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
