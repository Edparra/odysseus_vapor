Rails.application.routes.draw do
  devise_for :users
  resources :wishlists
  resources :products

 get 'user_root', to: 'welcome#homepage', as: :user_root

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'

  get 'products/:id/toggle_add', to: 'products#toggle_add', as: 'toggle'



  get 'welcome/homepage'
  get 'welcome/about'
  get 'welcome/contact'
  root 'welcome#homepage'

get 'products/wishitem'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
