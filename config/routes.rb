Rails.application.routes.draw do
  devise_for :users
  root to: "restaurants#index"
  resources :restaurants do
    collection do
      get 'search'
    end  
  end
end
