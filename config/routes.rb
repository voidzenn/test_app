Rails.application.routes.draw do
  apipie

  resources :users

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
