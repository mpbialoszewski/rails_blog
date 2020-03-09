Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root 'posts#index', as: 'home'

get 'about' => 'pages#about', as: 'about'

resources :posts do 
  resources :comments
end
#This explains how redirect method GET works in RoR
 # get 'contact' => 'pages#about'
end