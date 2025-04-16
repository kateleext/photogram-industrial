class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :authenticate_user!
  #tell devise which params to allow user to send
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :name, :avatar_image, :bio, :private, :website])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:username, :name, :avatar_image, :bio, :private, :website])
  end
  
  allow_browser versions: :modern
end
