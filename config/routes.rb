Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  resources :toys, except: [:destroy]  do
    resources :bookings, only: [:new, :create, :show]
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy] do
    resources :messages, only: [:create, :new]
  end
end
