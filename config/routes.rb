Rails.application.routes.draw do
  devise_for :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :pianos do
    resources :bookings, only: %i[index new create edit update]
  end
  resources :bookings, only: %i[destroy]
end
