Rails.application.routes.draw do
  resources :events
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :shouts




  #config/routes.rb
    authenticated :user do
      root "shouts#index", as: :root #-> if user is logged in
    end

    unauthenticated :user do
      root 'home#index', as: :unauthenticated #-> if user is not logged in
    end

end
