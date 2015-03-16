Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create] do
    resources :comments, only: [:show, :create, :index]
    resources :images, only: [:index, :show, :create] do
      member do
        post 'upvote'
      end
    end
  end
  resources :users, defaults: {format: :json}, only: [:create] do
    post 'sign_in', on: :collection
  end

  get 'amazon/sign_key'

end
