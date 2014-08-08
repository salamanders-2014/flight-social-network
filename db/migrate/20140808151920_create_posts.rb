class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :poster_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
