Teamsb::Application.routes.draw do
  get "apps/create"

  resources :users
  resources :sessions , only: [:new, :create, :destroy]
  resources :apps


  root              to: "static#home"

  match "/help",    to: 'static#help'
  match "/about",   to: 'static#about'

  match "/signup",  to: 'users#new'
  match "/signin",  to: 'sessions#new'
  match "/signout", to: 'sessions#destroy', via: :delete
  match "/install/:id", to: 'apps#instalar'

end
