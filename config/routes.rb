Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities do
    resources :bookings, only: :create
    resources :reviews, only: [:new, :create]
  end


  resources :reviews, only: :destroy
  resources :bookings, only: :destroy
  get '/dashboard', to: 'pages#dashboard'
end
