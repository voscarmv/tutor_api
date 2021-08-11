Rails.application.routes.draw do
  resources :appointments, only: [:index, :create]
  resources :subjects, only: [:index]

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/signup', to: 'registrations#create'
end
