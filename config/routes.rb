Rails.application.routes.draw do

    resources :users do
      member do
        get :personal_details
      end

      collection do
        get :active
      end

    end
  root 'posts#index'
end
