Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  get '/users', to: 'users#index', as: "users"
  get '/libraries', to: 'libraries#index'
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/libraries/new', to: 'libraries#new', as: 'new_library'
  post '/users', to: 'users#create'
  post 'libraries', to: 'libraries#create'
  get '/libraries/:id', to: 'libraries#show', as: 'library'
  get '/users/:id', to: 'users#show', as: "user"
  get '/users/:user_id/libraries', to: 'library_users#index', as: 'user_libraries'
  post '/libraries/:library_id/users', to: 'library_users#create', as: 'library_users'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'
end
