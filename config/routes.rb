Rails.application.routes.draw do
  resources :users do
    resources :plants, only: [:index, :show, :create]
  end
end
