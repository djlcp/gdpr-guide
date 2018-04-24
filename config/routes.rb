Rails.application.routes.draw do
  
  resources :types
  devise_for :users
  
  root to: 'home#index'

  resources :home, only: [:index]

  resources :categories, only: [:index, :show]

  resources :gdprlaw, only: [:index, :show]

  resources :guidancenotes, only: [:index, :show]

  resources :jerseylaw, only: [:index, :show]

  namespace :admin do
    resources :home, only: [:index]
  end

  namespace :admin do
    resources :categories
  end

  namespace :admin do
    resources :gdprlaw 
  end

  namespace :admin do
    resources :guidancenotes 
  end

  namespace :admin do
    resources :jerseylaw 
  end

  namespace :admin do
    resources :users 
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
