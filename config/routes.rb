Teamsb::Application.routes.draw do
  resources :users

  root              to: "static#home"

  match "/help",    to: 'static#help'
  match "/about",   to: 'static#about'

end
