Rails.application.routes.draw do
  root 'posts#home'
  
  devise_for :users
  
  resources :users
 	resources :posts
  
end
