Rails.application.routes.draw do

  devise_for :users
  
  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  
  root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end

  # only: []内にupdateを追加
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
