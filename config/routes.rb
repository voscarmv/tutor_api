Rails.application.routes.draw do
  resources :appointments
  resources :subjects

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/signup', to: 'registrations#create'
end
