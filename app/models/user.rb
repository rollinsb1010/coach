class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  

  # Setup accessible (or protected) attributes for your model
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable


  # Setup accessible (or protected) attributes for your model
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :username
  
  # validates_presence_of :username
  # validates_uniqueness_of :username
 
  # Railscasts method
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.email
      # user.username = auth.info.nickname
    end
  end
  
  def self.new_with_sessions(params, session)
    if session ["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super  
    end
  end
 
  def password_required?
    super && provider.blank?
  end
  
  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end
end        
    
 
 # def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  # user = User.where(:provider => auth.provider, :uid => auth.uid).first
  # unless user
    # user = User.create(name:auth.extra.raw_info.name,
                         # provider:auth.provider,
                         # uid:auth.uid,
                         # email:auth.info.email,
                         # password:Devise.friendly_token[0,20]
                         # )
  # end
  # user
# end
#   
# 
# 
   # def self.find_for_facebook_oauth(access_token, signed_in_resource= nil)
     # data = access_token['extra']['user_hash']
     # if user = User.find_by_email(data["email"])
       # user
     # else # Create an user with a stub password. 
       # User.create!(:email => data["email"], :password => Devise.friendly_token[0,20]) 
     # end
   # end
# end



