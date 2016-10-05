Rails.application.routes.draw do
  devise_for :users
  resources :wishlists
  resources :products

 get 'user_root', to: 'wishlists#index', as: :user_root

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'



  get 'welcome/homepage'
  get 'welcome/about'
  get 'welcome/contact'
  root 'welcome#homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
