Teamsb::Application.routes.draw do
  scope "api" do
    resources :apps
  end

  resources :users
  resources :sessions , only: [:new, :create, :destroy]



  root              to: "static#home"

  match "/help",    to: 'static#help'
  match "/about",   to: 'static#about'

  match "/signup",  to: 'users#new'
  match "/signin",  to: 'sessions#new'
  match "/signout", to: 'sessions#destroy', via: :delete
  match "/install/:id", to: 'apps#instalar'

end
