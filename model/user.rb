require "rubygems"
require "active_record"
require "mysql"

class User<ActiveRecord::Base
		has_many :blogs
		has_many :posts
	end 