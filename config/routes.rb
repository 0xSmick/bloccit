Bloccit::Application.routes.draw do

  devise_for :users
  resources :users, only: [:update]

  resources :topics do
    resources :posts, except: [:index] do
      resources :comments, only: [:create, :destroy]
    end
  end

  resources :posts do
    resources :comments 
  end

  match "about", to: 'welcome#about', via: :get

  root to: 'welcome#index'
end
