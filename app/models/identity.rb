class Identity < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :password, :password_confirmation
  belongs_to :user
  
  validates_presence_of :name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
end
  
