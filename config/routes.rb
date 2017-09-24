Rails.application.routes.draw do

  root to: 'concerts#index'
  resources :concerts, only: [:index, :show]
  resources :users, only:[:new, :create, :show]
  resources :sessions, only:[:new, :create, :destroy]
  resources :attendances, only:[:new, :create, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
