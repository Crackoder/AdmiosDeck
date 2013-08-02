class TwitterAccount < ActiveRecord::Base
	belongs_to :user

	attr_accessible :username

	validates_presence_of :username
end
