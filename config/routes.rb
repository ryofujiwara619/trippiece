Rails.application.routes.draw do
  root "projects#index"
  resources :users, only:[:show, :edit, :update]
  devise_for :users
  resources :projects do
    resources :comments, only:[:index, :create]
  end
end
