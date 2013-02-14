class Authorization < ActiveRecord::Base
  attr_accessible :chat_user_id, :provider, :uid
  belongs_to :chat_user
  validates :provider, :uid, :presence => true
  
  def self.find_or_create(auth_hash)
  unless auth = find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    chat_user = ChatUser.create :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
    auth = create :chat_user => chat_user, :provider => auth_hash["provider"], :uid => auth_hash["uid"]
  end
  auth
end
end
