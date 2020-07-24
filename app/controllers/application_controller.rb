class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :login_required

  def login_required
    unless logged_in?
      flash.now[:notice] = 'You are not logged in, please do so or signup'
      redirect_to new_session_path
    end
  end

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def current_user
    if session[:user_id]
      @current_user = User.find_by_id(session[:user_id])
      @current_user || false
    else
      false
    end
  end
  helper_method :current_user
end
