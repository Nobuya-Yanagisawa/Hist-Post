Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  root 'posts#home'

  devise_for :users

  resources :users
 	resources :posts do
 		resource :comments, only: [:create, :destroy]
 		resource :likes, only: [:create, :destroy]
 	end
  get 'posts/:id/edit_image_details', to: 'posts#edit_image_details', as: "edit_post_image_details"
  # post "likes/:post_id/create", to: "likes#create"
  # post "likes/:post_id/destroy", to: "likes#destroy"

end
