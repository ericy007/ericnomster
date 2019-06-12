Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  devise_for :users
 root 'places#index'
 resources :places
 resources :account_activations, only: [:edit]

 resources :password_resets, only: [:new, :create, :edit, :update]
end
