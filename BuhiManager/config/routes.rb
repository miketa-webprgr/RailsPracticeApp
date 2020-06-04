Rails.application.routes.draw do
  root to: 'bills#index'

  resources :bills

  namespace :admin do
    resources :bills do
      resource :completion, only: [:update, :destroy], module: "bills"
    end
  end

  resource :sessions, only: [:new, :create, :destroy]
end
