class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def banner
    @banner_time = false
    if cookies[:banner].present?
      cookies[:banner] = cookies[:banner].to_i + 1
      if cookies[:banner] > 10
        cookies[:banner] = 1
      elsif cookies[:banner] == 10
        @banner_time = true
      end
    else
      cookies[:banner] = 1
    end
  end
  helper_method :banner

end
