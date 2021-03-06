class User < ActiveRecord::Base
  has_many :twitter_accounts, :dependent => :destroy

  authenticates_with_sorcery!

  attr_accessible :username, :password, :password_confirmation
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username
end
