Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/doctors", to: "doctors#index"
  # get "/doctors", to: "doctors#index" 
  # get "/patients", to: "patients#index" 
  # Defines the root path route ("/")
  resources :doctors 
  resources :patients
  root "doctors#index"
end
