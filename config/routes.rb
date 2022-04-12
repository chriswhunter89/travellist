Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root to: 'users#show', as: :authenticated_root
    end

    unauthenticated :user do
      root to: 'pages#home', as: :unauthenticated_root
    end
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :destinations do
    resources :tasks
    resources :albums
  end
  resources :profile
end
