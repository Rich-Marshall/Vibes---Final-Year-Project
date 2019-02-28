Rails.application.routes.draw do
  resources :events
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :shouts

  root "shouts#index"

end
