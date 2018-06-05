Rails.application.routes.draw do
  resources :plants, only: [:index]
  resources :users do
    resources :plants, only: [:index, :show, :create]
  end
end
