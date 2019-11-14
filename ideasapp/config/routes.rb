Rails.application.routes.draw do
  get 'login/index'
  
  resources :ideas
  
  root 'login#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
