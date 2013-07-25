require 'rubygems'
require 'active_record'
require 'mysql'

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

	@u1=User.create(:username => 'kanaga', :place => 'bangalore' ,:status =>'online')
	@u2=User.create(:username => 'bhavya', :place => 'bangalore' ,:status =>'online')
	@u3=User.create(:username => 'mahe', :place => 'bangalore' ,:status =>'online')
	@u4=User.create(:username => 'kalidha', :place => 'bangalore', :status => 'online')
	@u5=User.create(:username => 'chitra', :place => 'bangalore', :status => 'online')

	
	@blog1= Blog.create( :title => 'blog1',:content => 'hi this a sample blog1')
	@blog2= Blog.create( :title => 'blog2',:content => 'hi this a sample blog2' )
	@blog3= Blog.create( :title => 'blog3',:content => 'hi this a sample blog3' )

	@posts1=Post.create(:comment => 'this is a nice comment' )
	@posts2=Post.create(:comment => 'this is a nice comment')
	@posts3=Post.create(:comment => 'this is a nice comment')
	@posts4=Post.create(:comment => 'this is a nice comment')
	@posts5=Post.create(:comment => 'this is a nice comment')
	

	

	@u1.blogs.push(@blog1)
	@u2.blogs.push(@blog2)
	@u3.blogs.push(@blog3)


	@blog1.posts.push(@posts1)
	@blog2.posts.push(@posts2)
	@blog3.posts.push(@posts3)
	@blog1.posts.push(@posts4)
	@blog2.posts.push(@posts5)

	@u5.posts.push(@posts1)
	@u4.posts.push(@posts2)
	@u3.posts.push(@posts3)
	@u4.posts.push(@posts4)
	@u1.posts.push(@posts5)





	

