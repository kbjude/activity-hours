Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :groups
  resources :hours
  resources :sessions, only: %i[new create destroy]
  get '/signup', to: 'users#new'
  get '/logout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new'
  root 'users#show'
end
