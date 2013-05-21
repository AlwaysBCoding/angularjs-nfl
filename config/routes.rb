AngularjsNfl::Application.routes.draw do

  root to: "teams#index"

  # TEAMS
  resources :teams
end
