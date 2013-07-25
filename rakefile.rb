require "rubygems"
require "active_record"
require "yaml"
require 'rake'

task :default => :migrate
desc "Migrate the database through
scripts in db/migrate. Target specific
version with VERSION=x"
task :environment do
    ActiveRecord::Base.establish_connection(:adapter => "mysql", :host => "localhost", :database => "blog_assignment2", :username => "root", :password => "root")
    ActiveRecord::Base.logger =Logger.new(STDOUT)
end

task :migrate => :environment do
    ActiveRecord::Migrator.migrate('migrate/',nil )
end