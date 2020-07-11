Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show index]
  resources :groups, only: %i[new create show index]
  resources :hours do
    collection do
      get 'externalhours'
    end
  end
  resources :sessions, only: %i[new create destroy]
  get '/signup', to: 'users#new'
  get '/logout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new'
  root 'users#show'
end
