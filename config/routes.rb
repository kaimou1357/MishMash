Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  namespace :api do
    resources :recipes, only: [:create]
  end
end
