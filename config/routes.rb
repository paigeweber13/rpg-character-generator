Rails.application.routes.draw do
  # get 'comments/create'
  # get 'comments/destroy'
  get 'welcome/index'
  
  resources :characters do
    resources :stats
    resources :comments
  end
  
  resources :steps
  
  root 'welcome#index'
end
