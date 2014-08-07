class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :description
      t.integer :uploader_id
      t.string :url
      
      t.timestamps
    end
  end
end
