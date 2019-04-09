Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :characters do
    resources :stats
  end
  
  root 'welcome#index'
end
