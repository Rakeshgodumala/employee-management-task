Rails.application.routes.draw do
  resources :employees
  resources :departments

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # 🟩 NEW: When we run rails s, open departments page first
  root "departments#index"
end
