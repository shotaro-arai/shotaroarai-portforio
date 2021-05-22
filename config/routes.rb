Rails.application.routes.draw do
  root 'top#index'
  resources :top, only: :index
  resources :profile, only: :index
  resources :works, only: :index
  resources :email, only: [:new, :create]
  get 'email/complete', to: "email#complete"
end
