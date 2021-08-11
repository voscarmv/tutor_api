Rails.application.routes.draw do
  resources :appointments
  resources :subjects

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/signup', to: 'registrations#create'

  # devise_for :users, path: '', path_names: {
  #   sign_in: 'login',
  #   sign_out: 'logout',
  #   registration: 'signup'
  # },
  # controllers: {
  #   sessions: 'sessions',
  #   registrations: 'registrations'
  # }
end
