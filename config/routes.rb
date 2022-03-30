Rails.application.routes.draw do
  root 'main_menu#default'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'

  resources :users

  get '/budgets', to: 'budgets#new'

  resources :budgets

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
