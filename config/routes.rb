Rails.application.routes.draw do
  

  resources :user_teams
  resources :stats
  resources :season_averages
  resources :players
  resources :teams
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
