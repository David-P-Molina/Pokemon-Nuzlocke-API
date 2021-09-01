Rails.application.routes.draw do
  resources :generations
  resources :rules
  resources :nuzlockes
  resources :graveyards
  resources :gravestones
  resources :teammates
  resources :trainers
  resources :pokemons
  resources :types
  get '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end