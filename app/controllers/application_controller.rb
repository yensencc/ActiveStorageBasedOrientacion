class ApplicationController < ActionController::Base



def original_url
  original_fullpath
end
    
protected

  before_action :configure_permitted_parameters,
    if: :devise_controller?
      
    def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:account_update) { |u|
     u.permit(:avatar, :email, :password, :password_confirmation,
     :current_password)
     } 



end
end
