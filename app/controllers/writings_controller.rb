class WritingsController < ApplicationController
	def create
		@word = Word.find(params[:word_id])
		@writing = @word.writings.build(writing_params)
		@writing.save
		redirect_to word_path(@word.id)
	end

  def destroy
    @writing = Writing.find(params[:writing_id])
    @writing.destroy
    redirect_to word_path(params[:word_id])
  end

private
	def writing_params
		params.require(:writing).permit(:word_id, :writing_writer, :writing_text)
	end
end
