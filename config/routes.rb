Rails.application.routes.draw do
  # root 'login_pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/doctors", to: "doctors#index"
  # get "/doctors", to: "doctors#index" 
  # get "/patients", to: "patients#index" 
  # Defines the root path route ("/")
  root "doctors#index"
  resources :doctors 
  resources :patients 
  resources :appointments
end
