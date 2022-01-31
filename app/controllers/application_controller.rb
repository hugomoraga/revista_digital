class ApplicationController < ActionController::Base
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

     
end
