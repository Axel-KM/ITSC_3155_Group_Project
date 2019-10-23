Rails.application.routes.draw do
  get 'ideas/index'
  get 'welcome/index'
  
  root 'ideas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
