Rails.application.routes.draw do
  get "pages/contact"
  resource :session
  resources :passwords, param: :token
  delete "/logout", to: "sessions#destroy", as: :logout
  # Recursos
  resources :authors
  resources :categories
  resources :books

  get "contact" => "pages#contact", as: :contact

  get "up" => "rails/health#show", as: :rails_health_check

  root "books#index"
end
