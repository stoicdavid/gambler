class ApplicationController < ActionController::Base
  protect_from_forgery
  check_authorization
  before_filter {|controller| controller.instance_variable_set(:@_authorized, true) if controller.devise_controller? }

  def current_ability
    @current_ability ||= Ability.new(current_usuario)
  end
  rescue_from CanCan::AccessDenied  do |exception|
    flash[:error] = "Acceso denegado."
    redirect_to root_url
  end
  
end
