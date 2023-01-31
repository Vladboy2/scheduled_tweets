# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  
  #get is for the form
  #post is for the form submission

  # GET /about (Respond to GET request) 
  # Points to controller for about
  get "about-us", to: "about#index", as: :about #Changing the url but leave the name the same

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destory"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  # root to main page
  # custom helper : 
  root to: "main#index"
  #get "/", to: "main#index"
end
