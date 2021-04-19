Rails.application.routes.draw do
  devise_for :users, skip: %i[registrations sessions passwords]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    post '/signup', to: 'registrations#create'
    post '/login', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy'
  end
end
