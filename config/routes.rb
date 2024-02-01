Rails.application.routes.draw do

  scope module: 'admin' do
    resources :posts
  end
root 'posts#index'
end
