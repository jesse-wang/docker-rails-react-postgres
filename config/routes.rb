Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :designers
    resources :companies
    resources :categories
    resources :items

    root to: "users#index"
  end

  scope '/api' do
    resources :designers
  end

  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#hello"
end
