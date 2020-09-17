Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniath_callbacks',
    registrations: 'users/registrations'
  }

  root 'pages#index'
  get 'pages/show'
  
  resources :users,only: :new
end
