"require 'rubygems'"
require  "active_record"
"require 'mysql'"

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


	User.joins(:posts).where('posts.id' => '3').each do |a|
			puts "username for post 3 "
			puts a.username
		end


	p = Post.where('blog_id' => '1')
	puts "no of comment in blog 2"
	puts p.size

	l= Post.where(blog_id: 1).last(2)
	l.each do |a|
		print a.id.to_s + ":"
		puts a.comment
	end

	f=Post.where(blog_id: 2).first(2)
	f.each do |a|
		print a.id.to_s + ":"
		puts a.comment
	end

