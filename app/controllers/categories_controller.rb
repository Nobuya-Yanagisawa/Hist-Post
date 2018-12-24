class CategoriesController < ApplicationController
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params[:id])
		@category.save
		redirect_to root_path
	end
end
