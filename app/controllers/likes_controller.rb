class LikesController < ApplicationController
  # before_action :authenticate_user

  def create
    @post = Post.find(params[:post_id])
    @like = Like.new(user_id: current_user.id, post_id: params[:post_id])
    @like.save
    respond_to do |format|
      format.html { redirect_to post_path(params[:post_id]) }
      format.js
    end
    @post_likes_count = Like.where(post_id: params[:post_id]).count
  end

  def destroy
    @post = Post.find(params[:post_id])
  	@like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
  	@like.destroy
    respond_to do |format|
      format.html { redirect_to post_path(params[:post_id]) }
      format.js
    end
    @post_likes_count = Like.where(post_id: params[:post_id]).count
  end
end