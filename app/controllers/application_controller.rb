class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :current_admin?
  # nothing outside of the controller is going to see it if we do not have the line above.
  before_action :build_cart

  def current_user
    if session[:user_id]
    @current_user ||= User.find(session[:user_id])
    end
  end

  def current_admin?
    current_user && current_user.admin?
  end

  def  build_cart
    @cart = Cart.new(session[:cart])
  end

end
