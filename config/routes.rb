Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create] do
    resources :comments, only: [:show, :create]
    resources :images, only: [:show, :create] do
      resources :votes, only: [:show, :create]
    end
  end
  resources :users, defaults: {format: :json}, only: [:create] do
    post 'sign_in', on: :collection
  end


end
