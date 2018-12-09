class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
  end

  def admin_user
  	redirect_to(root_url) unless current_user.admin?
  end

	def correct_user
	  @user = User.find(params[:id])
	  unless current_user.admin? || current_user == @user
	  	redirect_to root_path
	  end
	end

end
