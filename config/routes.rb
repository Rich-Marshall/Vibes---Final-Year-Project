Rails.application.routes.draw do
  get 'users/show'

  get 'home/new'

  get 'home/create'

  resources :homes
  resources :events
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :shouts
  resources :users




  #config/routes.rb
    authenticated :user do
      root "shouts#index", as: :root #-> if user is logged in
    end

    unauthenticated :user do
      root 'home#index', as: :unauthenticated #-> if user is not logged in
    end

end
