class UsersController < ApplicationController
  before_action :admin_user, only: [:index]
  before_action :correct_user, only: [:edit, :update]

  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      @user = User.find(params[:id])
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

private

	def user_params
		params.require(:user).permit(:user_name, :user_image, :email)
	end
end
