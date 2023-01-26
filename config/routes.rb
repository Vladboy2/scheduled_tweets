# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  
  # GET /about (Respond to GET request) 
  # Points to controller for about
  get "about-us", to: "about#index", as: :about #Changing the url but leave the name the same

  # root to main page
  # custom helper : 
  root to: "main#index"
  #get "/", to: "main#index"
end
