Rails.application.routes.draw do
  mount Blazer::Engine, at: "blazer"

  get "pages/contact"
  resource :session
  resources :passwords, param: :token
  delete "/logout", to: "sessions#destroy", as: :logout
  # Recursos
  resources :authors
  resources :categories
  resources :books do
    collection do
      get :report
    end
  end

  get "contact" => "pages#contact", as: :contact

  get "up" => "rails/health#show", as: :rails_health_check

  root "books#index"
end
