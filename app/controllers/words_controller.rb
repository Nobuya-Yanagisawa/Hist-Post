class WordsController < ApplicationController
	def new
		@word = Word.new
		@categories = Category.all
	end

	def create
		@word = Word.new(word_params)
		@word.save
		redirect_to root_path
	end

	def show
		@word = Word.find(params[:id])
	end

private
	def word_params
		params.require(:word).permit(:category_id, :word_name)
	end

end
