class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to current_user, :alert => exception.message
  end
  
  private
  def current_member
     current_user
  end
end
