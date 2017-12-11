class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :require_login, :current_user
  def require_login
    redirect_to "/" unless session.include? :user_id
  end

  def current_user
    if session[:user_id]
      User.find_by(id: session[:user_id])
    end
  end
end
