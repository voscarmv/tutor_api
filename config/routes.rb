Rails.application.routes.draw do
  resources :appointments
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  # devise_for :users, skip: %i[registrations sessions passwords]
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_scope :user do
  #   post '/signup', to: 'registrations#create'
  #   post '/login', to: 'sessions#create'
  #   delete '/logout', to: 'sessions#destroy'
  # end
end
