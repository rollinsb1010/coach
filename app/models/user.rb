class User < ActiveRecord::Base
  
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation
  
  validates_uniqueness_of :email
  
end  
  
  # has_many :identities
#   
  # def self.from_omniauth(auth)
    # find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  # end
# 
  # def self.create_with_omniauth(auth)
    # create! do |user|
      # user.provider = auth["provider"]
      # user.uid = auth["uid"]
      # user.name = auth["info"]["name"]
    # end
  # end
# end


# intridea method
# def self.create_with_omniauth(info)
  # create(name: info['name'])
# end
