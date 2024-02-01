Rails.application.routes.draw do

  resources :users do
    resources :posts, only: [:new, :create]
  end

  resources :posts, only: [:show, :edit, :update, :destroy], shallow: true
root 'posts#index'
end
