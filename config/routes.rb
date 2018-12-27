Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  root 'posts#home'

  devise_for :users
  resources :users


 	get 'posts/select', to: 'posts#select'
 	resources :posts do
 		resource :likes, only: [:create, :destroy]
 		resources :comments, only: [:create, :destroy] do
	 		resource :comment_likes, only: [:create, :destroy]
 		end
 	end
 	get 'posts/like/:id' => 'posts#like', as: "post_like"

 	resources :categories
 	resources :words, only: [:new, :create, :show, :destroy] do
 		resources :writings, only: [:create, :destroy] do
 			resource :writing_likes, only: [:create, :destroy]
 		end
 	end

  get 'posts/:id/edit_image_details', to: 'posts#edit_image_details', as: "edit_post_image_details"
  # post "likes/:post_id/create", to: "likes#create"
  # post "likes/:post_id/destroy", to: "likes#destroy"

end
