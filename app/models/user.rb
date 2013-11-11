class User < ActiveRecord::Base
  rolify
  authenticates_with_sorcery!
  attr_accessible :username,:email, :password, :salt 
  attr_accessible :password_confirmation
  attr_accessible :created_at, :updated_at, :remember_me_token, :remember_me_token_expires_at 


  validates_presence_of :password_confirmation
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :username
  validates_uniqueness_of :username
end
  
