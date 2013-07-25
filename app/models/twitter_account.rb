class TwitterAccount < ActiveRecord::Base
	belongs_to :user

	attr_accessible :username, :password

	validates_presence_of :username
	validates_presence_of :password
	validates_uniqueness_of :username
end
