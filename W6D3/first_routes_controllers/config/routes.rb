Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :destroy, :show, :update]
  resources :art_works, only: [:create, :destroy, :show, :update]
  resources :artwork_shares, only: [:create, :destroy]
  resources :users do 
    resources :art_works, only: [:index]
  end
  # get 'users' , to: 'users#index'
  # get 'users/new' , to: 'users#new'
  # get 'users/:id/edit' , to: 'users#edit'
  # get 'users/:id' , to: 'users#show'
  # post 'users' , to: 'users#create'
  # patch 'users/:id' , to: 'users#update'
  # put 'users/:id' , to: 'users#update'
  # delete 'users/:id' , to: 'users#destroy'
end
