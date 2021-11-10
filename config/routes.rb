Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants do
    resources :tweet, only: [:index, :create] 
    resources :comment, only: [:index, :create]
    
  end

  devise_for :users
end
