Rails.application.routes.draw do
  root 'static_pages#top'
  
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]

  resources :posts do
    resources :likes,  only: %i[create destroy]
    collection do
      get :likes
    end
  end

  resource :profile, only: %i[show edit update]
end
