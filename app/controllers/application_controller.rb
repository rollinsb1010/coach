class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end


# intridea method
# protected
# 
  # def current_user
    # @current_user ||= User.find_by_id(session[:user_id])
  # end
# 
  # def signed_in?
    # !!current_user
  # end
  # helper_method :current_user, :signed_in?
# 
  # def current_user=(user)
    # @current_user = user
    # session[:user_id] = user.nil? ? user : user.id
  # end
# end
