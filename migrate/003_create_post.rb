


class CreatePost <
    ActiveRecord::Migration
    def self.up
        create_table :posts do |t|
        t.string :comment
        t.string :user_id
        t.string :blog_id
        t.timestamps
        end
    end
    def self.down
        drop_table :posts
    end
end