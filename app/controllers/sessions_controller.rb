class SessionsController < ApplicationController
  
  # def new
  # end
#   

  def create
      user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid."
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, notice: "Logged out!"
end


  # def create
    # user = User.from_omniauth(env["omniauth.auth"])
    # session[:user_id] = user.id
    # redirect_to root_url, notice: "Signed in!"
  # end

  ### intridea method
  #def destroy
    # self.current_user = nil
    # redirect_to root_url, notice: "Signed out"

  def failure
    redirect_to root_url, alert: "identity failed, please try again."
  end
end

   # def new
    # # Stuff to display on the login-page.
  # end
  
    ####begin intridea method
#   
  # def create
    # auth = request.env['omniauth.auth']
#  
    # # Find an identity or create an identity
    # @identity = Identity.find_with_omniauth(auth)
    # if @identity.nil?
      # # If no identity was found, create a brand new one here
      # @identity = Idenitity.create_with_omniauth(auth)
    # end
#  
    # if signed_in?
      # if @identity.user == current_user
        # # User is signed in so they are trying to link an identity with their
        # # account. But we found the identity and the user associated with it 
        # # is the current user. So the identity is already associated with 
        # # this user. So let's display an error message.
        # redirect_to root_path, notice: "You have already linked this account"
      # else
        # # The identity is not associated with the current_user so lets 
        # # associate the identity
        # @identity.user = current_user
        # @identity.save()
        # redirect_to root_path, notice: "Account successfully authenticated"
      # end
    # else # no user is signed_in
      # if @identity.user.present?
        # # The identity we found had a user associated with it so let's 
        # # just log them in here
        # self.current_user = @identity.user
        # redirect_to root_path, notice: "Signed in!"
     # else
     
        #redirect_to new_user_path, notice: "Please finish registering"
        
        ####end of intridea method
        
        # # The identity has no user assigned and there is no user signed in
        # # Our decision here is to create a new account for the user
        # # But your app may do something different (eg. ask the user
        # # if he already signed up with some other service)
        # if @identity.provider == 'identity'
          # u = User.find(@identity.uid)
          # # If the provider is identity, then it means we already created a user
          # # So we just load it up
        # else
          # # otherwise we have to create a user with the auth hash
          # u = User.create_with_omniauth(auth)
          # # NOTE: we will handle the different types of data we get back
          # # from providers at the model level in create_with_omniauth
        # end
        # # We can now link the identity with the user and log him in
        # u.identitys << @identity
        # self.current_user = u
        # redirect_to root_path, notice: "Welcome to The app!"
      # end
    # end
  # end
#   
  # def destroy
    # self.current_user = nil
    # redirect_to root_path, notice: "Signed out!"
  # end
#   
  # def failure  
    # redirect_to root_path, alert: "identity failed, please try again."  
  # end
# end

