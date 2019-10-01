Rails.application.routes.draw do

  devise_for :users
  root to: 'store#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    
  end

  resources :stores do
    resources :products
  end

  resources :products, only: [ :show, :edit, :update, :destroy ] do
    resources :purchases, only: [:create]
  end
  
end
