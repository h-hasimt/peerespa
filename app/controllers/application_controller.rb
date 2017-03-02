class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def after_sign_up_path_for(resource)
  #   case resource
  #   when User
  #     '/usrs#show'
  #   when Admin
  #     admin_path
  #   end
  # end

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(User)
      user_path
    elsif resource_or_scope.is_a?(Admin)
      admin_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      new_user_session_path
    elsif resource_or_scope == :admin
      new_admin_session_path
    else
      root_path
    end
  end

end
