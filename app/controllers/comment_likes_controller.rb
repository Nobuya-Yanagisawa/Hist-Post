class CommentLikesController < ApplicationController
  # before_action :authenticate_user

  def create
  	@comment_like = CommentLike.new(user_id: current_user.id, comment_id: params[:comment_id], post_id: params[:post_id])
  	@comment_like.save
  	redirect_to post_path(params[:post_id])
  end

  def destroy
  	@comment_like = CommentLike.find_by(user_id: current_user.id, comment_id: params[:comment_id], post_id: params[:post_id])
  	@comment_like.destroy
  	redirect_to post_path(params[:post_id])
  end
end