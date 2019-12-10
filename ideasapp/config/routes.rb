Rails.application.routes.draw do
  
  get 'ideas/music'
  get 'ideas/movies'
  get 'ideas/art'
  get 'ideas/theatre'
  get 'ideas/uprank'
  get 'ideas/downrank'
  
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
