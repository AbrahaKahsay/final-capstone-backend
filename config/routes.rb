Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create] do 
        resources :reservations, except: [:update]
      end
      post 'login', to: 'users#login'
      resources :bikes, except: [:update]
    end
  end 
end
