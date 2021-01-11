Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new,:create, :index, :show] do 
    resources :subs, only: [:edit, :update]
  end 
  resource :session, only: [:new, :create, :destroy]
  resources :subs, except: [:destroy, :edit, :update] 
end
