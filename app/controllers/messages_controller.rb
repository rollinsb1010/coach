class MessagesController < ApplicationController
 
  # def index
    # @messages = Message.all
  # end
# 
  # def create
    # @message = Message.create!(params[:message])
  # end
# end
 
 
 
 
  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messages }
    end
  end
# 
  # # GET /messages/1
  # # GET /messages/1.json
  # def show
    # @message = Message.find(params[:id])
# 
    # respond_to do |format|
      # format.html # show.html.erb
      # format.json { render json: @message }
    # end
  # end
# 
  # # GET /messages/new
  # # GET /messages/new.json
  # def new
    # @message = Message.new
# 
    # respond_to do |format|
      # format.html # new.html.erb
      # format.json { render json: @message }
    # end
  # end
# 
  # # GET /messages/1/edit
  def edit
    @message = Message.find(params[:id])
  end
# 
  # # POST /messages
  # # POST /messages.json
  def create
    @message = Message.create!(params[:message])
    # auth_hash = request.env['omniauth.auth']
       # if message[:chat_user_id]
         # ChatUser.find(message[:chat_user_id]).add_provider(auth_hash)
         # render :text => "You can now login using #{auth_hash["provider"].capitalize} too!"
       # else 
         # auth_hash = request.env['omniauth.auth'] 
         # auth = Authorization.find_or_create(auth_hash)
         # message[:chat_user_id] = auth.user.id
         # render :text => "Welcome #{auth.user.name}!" 
       # end
  end
     
    # render :text => auth_hash.inspect
    # @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
      # if @authorization
        # render :text => "Welcome back #{@authorization.chat_user.name}! You have already signed up."
      # else
    # chat_user = ChatUser.new :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
    # chat_user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
    # chat_user.save
    # render :text => "Hi #{chat_user.name}! You've signed up."
  
   

 
    # Means our user is signed in. Add the authorization to the user
    

    # Log him in or sign him up
   
    # respond_to do |format|
      # if @message.save
        # format.html { redirect_to @message, notice: 'Message was successfully created.' }
        # format.json { render json: @message, status: :created, location: @message }
      # else
        # format.html { render action: "new" }
        # format.json { render json: @message.errors, status: :unprocessable_entity }
      # end
    # end
 
  
  # def failure
    # render :text => "Sorry, but you didn't allow access to our app!"
  # end
#   
  # def destroy
    # message[:chat_user_id] = nil
    # render :text => "You've logged out!"
  # end
# 
  # # PUT /messages/1
  # # PUT /messages/1.json
  # def update
    # @message = Message.find(params[:id])
# 
    # respond_to do |format|
      # if @message.update_attributes(params[:message])
        # format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        # format.json { head :no_content }
      # else
        # format.html { render action: "edit" }
        # format.json { render json: @message.errors, status: :unprocessable_entity }
      # end
    # end
  # end
# 
  # # DELETE /messages/1
  # # DELETE /messages/1.json
  # def destroy
    # @message = Message.find(params[:id])
    # @message.destroy
# 
    # respond_to do |format|
      # format.html { redirect_to messages_url }
      # format.json { head :no_content }
    # end
  # end
  
  
end





