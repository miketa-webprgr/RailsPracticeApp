Rails.application.routes.draw do
  root to: 'bills#index'

  resources :bills

  namespace :admin do
    resources :bills do
      member do
        post :done
        post :undone
      end
    end
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
