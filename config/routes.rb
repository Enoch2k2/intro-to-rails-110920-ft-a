Rails.application.routes.draw do
  
  root to: 'static#home'
  
  resources :movies # all 7 RESTful routes
  # get '/movies', to: "movies#index"
  # get "/movies/new", to: "movies#new"
  # get '/movies/:id', to: "movies#show"
  # get "/movies/:id/edit", to: "movies#edit"
  # post "/movies", to: "movies#create"
  # patch "/movies/:id", to: "movies#update"
  # delete "/movies/:id", to: "movies#destroy"
  
end
