Rails.application.routes.draw do
  resources :shouts

  root "shouts#index"
end
