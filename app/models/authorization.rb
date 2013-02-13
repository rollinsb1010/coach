class Authorization < ActiveRecord::Base
  attr_accessible :chat_user_id, :provider, :uid
  belongs_to :chat_user
  validates :provider, :uid, :presence => true
end
