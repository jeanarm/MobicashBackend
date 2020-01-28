Rails.application.routes.draw do 
  namespace :api do
    namespace :v1 do
      resources :customers
      resources :users
    end 
  end
  post 'signin', controller: :sessions, action: :create
  delete 'signin', controller: :sessions, action: :destroy
end
