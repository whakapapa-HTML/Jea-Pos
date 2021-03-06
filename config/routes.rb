Rails.application.routes.draw do
  get 'tags/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#others'
  resources :brands, only: :create
  resources :posts do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  get 'others' => 'posts#others'
  resources :nominees do
    get 'posts', to: 'posts#search'
  end
  resources :users do
    resources :jeans
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end
  get 'my_page' => 'users#my_page'
  get 'my_page/edit' => 'users#edit'
  get 'my_page/jeans' => 'jeans#index'
  get 'my_page/new_jeans' => 'jeans#new'
  get 'my_page/jeans/:id' => 'jeans#show', as: 'my_jeans'
  get 'my_page/timeline' => 'posts#timeline', as: 'timeline'
  get 'this_week', to: 'nominees#this_week'
  get 'last_weeks_winner', to: 'nominees#last_weeks_winner'
  resources :tags do
    get 'posts', to: 'posts#search'
  end
  resources :nominee_maps, only: [:create, :destroy]

end
