class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # rescue_from CanCan::AccessDenied do |exception|
  #   flash[:error] = "Access denied."
  #   redirect_to root_url
  # end


   def current_ability
     if volunteer_signed_in?
       @current_ability ||= Ability.new(current_volunteer)
     elsif organization_signed_in?
       @current_ability ||= Ability.new(current_organization)
     end
  end


  def after_sign_in_path_for(resource)
    if resource.class == Organization
      organization_path(resource.id)
    elsif resource.class == Volunteer
      event_path(5)
    end
  end

  #  def after_sign_in_path_for(resource)
  #   if resource.class == Organization
  #     organization_path(resource.id)
  #   elsif resource.class == Volunteer
  #    session[:previous_url] = request.fullpath
  #   end
  # end


end
