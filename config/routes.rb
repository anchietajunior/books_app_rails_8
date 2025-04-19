Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  delete "/logout", to: "sessions#destroy", as: :logout
  # Recursos
  resources :authors
  resources :categories
  resources :books

  get "up" => "rails/health#show", as: :rails_health_check

  root "books#index"
end
