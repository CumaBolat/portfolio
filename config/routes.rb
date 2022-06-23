Rails.application.routes.draw do
  root 'main_menu#default'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  get '/create_auth', to: 'users#create_auth'
  post '/auth_page', to: 'users#auth_page'
  resources :users

  get '/budgets', to: 'transactions#new'

  resources :transactions

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
