Rails.application.routes.draw do

  sc 'admin' do
    resources :posts
  end
  resources :users
root 'posts#index'
end
