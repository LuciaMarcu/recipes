Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'  
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/all_recipes', to: 'recipes#index'
  post    'add_recipes', to: 'recipes#create'
  get     '/login'     , to: 'sessions#new'
  post    '/login'     , to: 'sessions#create'
  delete  '/logout'    , to: 'sessions#destroy'
  
  resources :users
  resources :recipes
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
