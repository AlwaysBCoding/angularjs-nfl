AngularjsNfl::Application.routes.draw do

  root to: "teams#index"

  # TEAMS
  resources :teams do
  	get "roster", on: :member
  end

end
