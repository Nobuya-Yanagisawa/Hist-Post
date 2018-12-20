Rails.application.routes.draw do
  root 'posts#home'

  devise_for :users

  resources :users
 	resources :posts
  get 'posts/:id/edit_image_details', to: 'posts#edit_image_details', as: "edit_post_image_details"

end
