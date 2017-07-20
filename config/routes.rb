Rails.application.routes.draw do
  devise_for :users
  root "projects#index"
  resources :users, only:[:show, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end
  resources :projects do
    resources :participants, only:[:new, :create]
    collection do
      post 'search'
    end
  end
end
