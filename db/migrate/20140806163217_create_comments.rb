class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :commenter_id
      t.integer :post_id

      t.timestamps
    end
  end
end
