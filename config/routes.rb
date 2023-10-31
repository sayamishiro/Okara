Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'okaras/kensaku' => 'okaras#kensaku'
  resources :okaras do
    resources :likes, only: [:create, :destroy]
  end
  
  get 'okaras/:id' => 'okaras#show',as: 'Okara'

  patch 'okaras/:id' => 'okaras#update'
  delete 'okaras/:id' => 'okaras#destroy' 
  get 'okaras/:id/edit' => 'okaras#edit', as:'edit_okaras'
  
  root 'okaras#index'
end