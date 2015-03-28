class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.class == Organization
      organization_path(resource.id)
    elsif resource.class == Volunteer
      volunteer_path(resource.id)
    end
  end

   def after_sign_in_path_for(resource)
    if resource.class == Organization
      organization_path(resource.id)
    elsif resource.class == Volunteer
      volunteer_path(resource.id)
    end
  end

end
