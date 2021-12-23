Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants do
    resources :daily, only: [:new, :create, :edit,:update, :show, :destroy] 
    resources :comment, only: [ :create]
    
  end

  devise_for :users
end
