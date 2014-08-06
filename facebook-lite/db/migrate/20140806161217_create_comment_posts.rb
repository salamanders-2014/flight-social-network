class CreateCommentPosts < ActiveRecord::Migration
  def change
    create_table :comment_posts do |t|
      t.integer :post_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
