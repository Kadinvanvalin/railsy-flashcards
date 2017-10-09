class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def logged_in?
    session[:user_id] != nil
  end
  helper_method :logged_in?

  def authenticate!
    redirect '/sessions/new' unless logged_in?
  end

  def authorize!(user)
    redirect '/not_authorized' unless authorized?(user)
  end

  def authorized?(user)
    current_user == user
  end
end
