class CommentsController < ApplicationController
  def create
		@post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to post_path(@post.id)
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    redirect_to post_path(params[:post_id])
  end

private

	def comment_params
			params.require(:comment).permit(:user_id, :post_id, :comment_text)
	end

end
