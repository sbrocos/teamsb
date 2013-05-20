Teamsb::Application.routes.draw do
  resources :users
  resources :sessions , only: [:nes, :create, :destroy]

  root              to: "static#home"

  match "/help",    to: 'static#help'
  match "/about",   to: 'static#about'

  match "/signup",  to: 'users#new'
  match "/signin",  to: 'sessions#new'
  match "/signout", to: 'sessions#destroy', via: :delete

end
