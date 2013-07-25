require 'rubygems'
require 'active_record'
require 'mysql'

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(:adapter => "mysql", :host => "localhost", :database => "blog_assignment2", :username => "root", :password => "root")
	class Blog<ActiveRecord::Base
	has_many :posts
	belongs_to :users
	end

	class Post<ActiveRecord::Base
		belongs_to :blogs
		belongs_to :users
	end

	class User<ActiveRecord::Base
		has_many :blogs
		has_many :posts
	end 

	puts "total no of blogs"
	puts Blog.count.to_s

	