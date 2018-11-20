Rails.application.routes.draw do
  devise_for :users
  root to: 'toys#index'
  resources :toys, except: [:destroy]  do
    resources :bookings, except: [:edit, :update, :index]
  end
  resources :bookings, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
