Rails.application.routes.draw do
  
  get 'users/index'
  #get 'users/show'
  devise_for :users
  resources :books do
    resources :comments
    resources :trades
  end
  get '/dashboard' => 'dashboard#index', as: 'dashboard'
  get '/comments/:id', to: 'comments#show', as: 'comment'
  get "/show/:user_id" => "users#show", :as => :user_profile
  match '/books/:id/trades/:id/approve', to: 'trades#approve', via: 'get'
  match '/books/:id/trades/:id/deny', to: 'trades#deny', via: 'get'
  resources :users, :only =>[:show]
  root  'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  
end
