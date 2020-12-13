Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  devise_for :users
  root to: 'posts#index'
  get 'likes/pop_picture' => 'likes#pop_picture'

  resources :users
  resources :posts do
    resource :likes
    resources :comments
        collection do
      get 'search'
    end
  end
end
