Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :show, :edit, :update ]
  resources :offers, only: [ :show, :index ] do
    resources :reviews, only: [ :new, :create ]
    resources :bookings, only: [ :new, :create]
  end
end
