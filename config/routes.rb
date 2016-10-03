Rails.application.routes.draw do
  resources :products
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'welcome/homepage'
  root 'welcome#homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
