Rails.application.routes.draw do
  devise_for :users
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root to: 'users#show', as: :authenticated_root
    end

    unauthenticated :user do
      root to: 'pages#home', as: :unauthenticated_root
    end
  end

  resources :destinations
  resources :tasks
  resources :memories
  resources :profile

end

#   resources :users do
#     resources :destinations, only: [ :index ]
#   end
#   resources :destinations, only: [ :new, :create, :show, :edit, :destroy ]
#   resources :memories
#   resources :profiles, only: [ :show, :update ]
