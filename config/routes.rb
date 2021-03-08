Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'pianos', to: 'pianos#index'
  get 'pianos/:id', to: 'pianos#show', as: :piano
  get 'pianos/new', to: 'pianos#new'
  post 'pianos', to: 'pianos#create'
  get 'pianos/:id/edit', to: 'pianos#edit'
  patch 'pianos/:id', to: 'pianos#update'
  delete 'pianos/:id', to: 'pianos#destroy'
end
