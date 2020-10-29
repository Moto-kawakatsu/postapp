Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  
  resources :users
  resources :posts do
    resource :likes
    resources :comments
        collection do
      get 'search'
    end
  end
end
