Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root 'posts#index'

get 'about' => 'pages#about'

resources :posts
#This explains how redirect method GET works in RoR
 # get 'contact' => 'pages#about'
end