class User < ActiveRecord::Base
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
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :name
 
 def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  user = User.where(:provider => auth.provider, :uid => auth.uid).first
  unless user
    user = User.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20]
                         )
  end
  user
end
  

end


# class User < ActiveRecord::Base
   # def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
     # data = access_token['extra']['user_hash']
     # if user = User.find_by_email(data["email"])
       # user
     # else # Create an user with a stub password. 
       # User.create!(:email => data["email"], :password => Devise.friendly_token[0,20]) 
     # end
   # end
# end

