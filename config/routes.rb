Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :sections
  root 'sessions#new'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create', as: 'users'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'dashboard', to: 'dashboard#index'

end
