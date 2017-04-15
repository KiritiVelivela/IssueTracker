class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation,
                                                       :first_name, :last_name])
    if current_user
      if current_user.role == 'admin'
        devise_parameter_sanitizer.permit(:account_update, keys: [:password, :password_confirmation, :current_password,
                                                                  :first_name, :last_name, :role])

      else
        devise_parameter_sanitizer.permit(:account_update, keys: [:password, :password_confirmation, :current_password,
                                                                  :first_name, :last_name])

      end
    end
  end

end
