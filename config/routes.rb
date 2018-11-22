Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :toys, except: [:destroy]  do
    resources :bookings, only: [:new, :create] do
      resources :chats do
        resources :messages
      end
    end
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
