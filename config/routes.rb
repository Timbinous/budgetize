Rails.application.routes.draw do
  resources :transactions
  resources :funds
  resources :accounts
  get 'dashboard/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"
end
