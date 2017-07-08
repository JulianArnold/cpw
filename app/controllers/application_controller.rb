class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user_session, :current_user

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session&.record
  end

  def logged_in_required
    unless current_user
      store_location
      flash[:error] = 'You must be logged in to access this page'
      redirect_to sign_in_url
      false
    end
  end

  def logged_out_required
    if current_user
      flash[:error] = 'You must be logged out to access this page'
      redirect_to root_url
      false
    end
  end

  def customer_required
    unless current_user.is_a?(Customer) || current_user.is_a?(Admin)
      flash[:error] = 'You must be a customer to access this page'
      redirect_to root_url
      false
    end
  end

  def manager_required
    unless current_user.is_a?(Manager) || current_user.is_a?(Admin)
      flash[:error] = 'You must be a manager to access this page'
      redirect_to root_url
      false
    end
  end

  def admin_required
    unless current_user.is_a?(Admin)
      flash[:error] = 'You must be an Admin to access this page'
      redirect_to root_url
      false
    end
  end

  # Remembers the page the user was trying to access
  def store_location
    session[:return_to] = request.fullpath
  end

  # brings the user to the page they were ORIGINALLY trying to load,
  # or it brings them to the URL in the "default"
  def redirect_back_or_default(default)
    if session[:return_to]
      destination = session[:return_to]
      session[:return_to] = nil
    else
      destination = default
      session[:return_to] = nil
    end
    redirect_to(destination)
  end
end
