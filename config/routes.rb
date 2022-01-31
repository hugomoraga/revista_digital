Rails.application.routes.draw do
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
  
  get '/articulo/:id' => 'readers/posts#show', as: :articulos_post

  scope module: 'users' do 
    resources :posts, :path => 'publicaciones' do
      resources :elements
    end
  end
end
