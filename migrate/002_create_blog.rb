

class CreateBlog <
    ActiveRecord::Migration
    def self.up
    	create_table :blogs do |t|
        t.string :title
        t.string :content
        t.string :user_id
        t.timestamps
        end
    end
    def self.down
    	drop_table :blogs
    end
end


