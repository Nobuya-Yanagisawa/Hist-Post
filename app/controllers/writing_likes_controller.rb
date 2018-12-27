class WritingLikesController < ApplicationController
	def create
		@writing_like = WritingLike.new(user_id: current_user.id, writing_id: params[:writing_id], word_id: params[:word_id])
		@writing_like.save
		redirect_to word_path(params[:word_id])
	end

	def destroy
  	@writing_like = WritingLike.find_by(user_id: current_user.id, writing_id: params[:writing_id], word_id: params[:word_id])
  	@writing_like.destroy
  	redirect_to word_path(params[:word_id])
	end
end
