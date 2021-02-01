Rails.application.routes.draw do
  
  namespace :api ,defaults: {format: :json} do
    resources :todos
  end

end


# namespace :admin do
#   resources :articles, :comments
# end