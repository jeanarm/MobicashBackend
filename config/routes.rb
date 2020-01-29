Rails.application.routes.draw do 
  namespace :api do
    namespace :v1 do
      resources :customers
      resources :users
      get'customerpdf', controller: :customers, action: :pdf_generation
    end 
  end
  post 'signin', controller: :sessions, action: :create
  delete 'signin', controller: :sessions, action: :destroy
end
