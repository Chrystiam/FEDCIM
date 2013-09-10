class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  
  scopify

  #has_and_belongs_to_many :users
  #belongs_to :resource, :polymorphic => true

  def self.act
  		role = Role.all
  end
end
