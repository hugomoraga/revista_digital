Rails.application.routes.draw do
  resources :magazines
  resources :opinions, :path => 'opinion'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, :path => 'categoria'
  devise_for :users
  get 'home/index'  
  get '/maqueta' => 'readers/posts#maqueta', as: :maqueta
 
  get '/historico' => 'historic#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "readers/home#index"
  
  resources :articulos, controller: "readers/home", as: :articulos_post do
    collection do
      match "search" => "readers/home#search", via: [:get, :post], as: :search
    end
  end


  scope module: 'users' do 
    resources :posts, :path => 'publicaciones' do
      resources :elements
    end
  end
end
