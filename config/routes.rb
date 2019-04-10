Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :characters do
    resources :stats
  end
  
  resources :steps
  
  root 'welcome#index'
end
