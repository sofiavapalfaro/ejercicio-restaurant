Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants do
    resources :dishes, only: [:index, :new, :create]
    resources :hours, only: [:index, :new, :create]
  end
  resources :dishes, only: [:show, :edit, :update, :destroy]
  resources :hours, only: [:show, :edit, :update, :destroy]
  # Defines the root path route ("/")
  # root "posts#index"
end
