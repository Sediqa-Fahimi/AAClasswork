Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # resources :users
  # resource  :sessions

  
  #users & sessions
  resources :users, only: [:new, :create, :show]
  resource :sessions, only: [:new, :create, :destroy]

  #bands
  resources :bands
end
