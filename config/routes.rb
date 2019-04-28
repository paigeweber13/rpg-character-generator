Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :characters do
    resources :stats
    resources :comments
  end
  
  resources :steps
  
  root 'welcome#index'
end
