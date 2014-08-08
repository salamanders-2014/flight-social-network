class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.integer :uploader_id
    	t.integer :post_id
    	t.string :description
    	t.string :url

      t.timestamps
    end
  end
end
