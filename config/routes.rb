Rails.application.routes.draw do
  devise_for :users
  root "projects#index"
  resources :users, only:[:show, :edit, :update]
  resources :projects do
    resources :participants, only:[:new, :create]
  end
  resources :reviews, only: [:new, :create]
end
