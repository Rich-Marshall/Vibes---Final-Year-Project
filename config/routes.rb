Rails.application.routes.draw do
  devise_for :users
  resources :shouts

  root "shouts#index"
end
