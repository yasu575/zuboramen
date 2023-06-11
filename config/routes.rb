Rails.application.routes.draw do
  root 'static_pages#top'
  get 'terms', to: 'static_pages#terms'
  get 'privacy', to: 'static_pages#privacy'
  get 'contact', to: 'static_pages#contact'
  
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]

  resources :posts do
    collection do
      get :likes
    end
  end

  resources :toppings do
    get 'posts'
  end

  resources :likes, only: %i[create destroy]
  resource :profile, only: %i[show edit update]
end
