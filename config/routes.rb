Rails.application.routes.draw do
  root 'main_menu#default'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
