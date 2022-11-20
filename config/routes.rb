Rails.application.routes.draw do
  resources :destroys
  resources :user_teams
  resources :stats
  resources :season_averages
  resources :players
  resources :teams
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get '*path', to: 'fallback#index', constraints: ->(req) { !req.xhr? && req.format.html? }

  #login in routes
  post '/login', to: 'sessions#create'

  #route to retrieve user's data from database using session hash
  get '/me', to: 'users#show'

  #route for logging out
  delete "/logout", to: 'sessions#destroy'

  get '/login', to: 'users#show'
end
