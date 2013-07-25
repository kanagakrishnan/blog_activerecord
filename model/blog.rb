require "rubygems"
require "active_record"
require "mysql"

class Blog<ActiveRecord::Base
	has_many :posts
	belongs_to :users
end