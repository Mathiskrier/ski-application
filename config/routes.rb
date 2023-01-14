Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  authenticated :user do
    root 'pages#index', as: :authenticated_root
  end
  root to: "pages#home"

  resources :pages
  resources :ski_spots, only: [:index, :show] do
    resources :reports, only: [:index]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
