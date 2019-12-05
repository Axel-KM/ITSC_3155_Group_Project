Rails.application.routes.draw do
  
  resources :logins, only: [:new, :create, :destroy]
  get 'login/new', to: 'users#new', as: 'signup'
  get 'login', to: 'login#create', as: 'login/index'
  get 'login/destroy', to: 'login#destroy', as: 'logout'
  

  resources :users
  
  resources :ideas do 
    resources :comments
  end
  
  root 'login#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
