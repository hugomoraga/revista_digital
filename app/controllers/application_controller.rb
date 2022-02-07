class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from SecurityError do |exception|  
    redirect_to root_url
  end

  def authenticate_admin_user!
    raise SecurityError unless current_user.try(:admin?)
  end
    
  def current_admin_user
    return unless current_user.role == 'admin'
      current_user
  end

  def after_sign_in_path_for(user)  
    user.admin? ? admin_dashboard_path : root_path 
  end
      
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname])
  end
     
end
