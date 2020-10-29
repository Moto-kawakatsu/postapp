Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
<<<<<<< Updated upstream
    resources :comments, only: :create
=======
    resources :comments
        collection do
      get 'search'
    end
>>>>>>> Stashed changes
  end
  resources :users

end
