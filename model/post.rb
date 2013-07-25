require "rubygems"
require "active_record"
require "mysql"

class Post<ActiveRecord::Base
		belongs_to :blogs
		belongs_to :users
	end