class CategoriesController < ApplicationController
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		@category.save
		redirect_to root_path
	end

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		@categories = Category.all
		
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to root_path
	end

private
	def category_params
		params.require(:category).permit(:category_name)
	end
end
