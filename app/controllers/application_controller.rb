class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

    def authenticate_admin_user!
        authenticate_user!
        unless current_user.role = 'admin'
          flash[:alert] = "Unauthorized Access!"
          redirect_to root_path
        end
      end
    
      def current_admin_user
        return unless current_user.role == 'admin'
        current_user
      end
      
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname])
  end
     
end
