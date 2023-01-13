Rails.application.routes.draw do
root  "doctors#index"
resources :doctors 
#login sessions
get '/login', to: 'sessions#new'
get '/logout', to: 'sessions#destroy'
post'/login', to: 'sessions#create'

  # root 'login_pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/doctors", to: "doctors#index"
  # get "/doctors", to: "doctors#index" 
  # get "/patients", to: "patients#index" 
  # Defines the root path route ("/")
  # 
  # resources :doctors 
  resources :patients 
  resources :appointments
end

