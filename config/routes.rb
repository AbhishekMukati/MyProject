Rails.application.routes.draw do
  root "doctors#index"
  resources :doctors do
    resources :appointments
  end
 
  resources :patients
   get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end