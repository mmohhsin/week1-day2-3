Rails.application.routes.draw do

  concern :my_user do
    resources :users
  end

  resources :posts, concerns: :my_user
root 'posts#index'
end
