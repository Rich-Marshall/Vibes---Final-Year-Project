Rails.application.routes.draw do
  get 'users/show'

  get 'home/new'

  get 'home/create'



  resources :homes
  resources :events
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :shouts
  resources :users

  resources  :users do
    resources :shouts, only: [:index]
  end

  get 'users/:id/user_shouts' => 'users#user_shouts', :as => :custom_user_shouts




  #config/routes.rb
    authenticated :user do
      root "shouts#index", as: :root #-> if user is logged in
    end

    unauthenticated :user do
      root 'home#index', as: :unauthenticated #-> if user is not logged in
    end

end
