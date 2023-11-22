Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'okaras/top' => 'okaras#top'
  get 'okaras/karishow' => 'okaras#karishow'
  get 'okaras/setumei' => 'okaras#setumei'
  get 'okaras/kensaku' => 'okaras#kensaku'
  resources :okaras do
    resources :likes, only: [:create, :destroy]
  end
  
  
  root 'okaras#top'
end